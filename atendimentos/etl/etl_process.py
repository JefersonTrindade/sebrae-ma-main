import hashlib
from sqlalchemy import text
from sqlalchemy.dialects.mssql import dialect as mssql_dialect

class ETLProcess:
    """Classe para realizar as operações de ETL."""
    def __init__(self, sme_connector, sas_connector, destination_connector):
        """
            Inicia o processador ETL com os conectores para SME, SAS e destino.

            :param sme_connector: Conector para o banco de dados SME.
            :param sas_connector: Conector para o banco de dados SAS.
            :param destination_connector: Conector para o banco de dados de destino.
            :type sme_connector: database.DatabaseConnector
            :type sas_connector: database.DatabaseConnector
            :type destination_connector: database.DatabaseConnector
        """
        self.sme_connector = sme_connector
        self.sas_connector = sas_connector
        self.destination_connector = destination_connector

    def load_data(self, query, connector):
        """
            Executa uma consulta SQL usando o conector de banco de dados especificado e retorna os resultados.

            :param query: A consulta SQL a ser executada.
            :type query: str
            :param connector: O conector de banco de dados a ser usado para executar a consulta.
            :type connector: DatabaseConnector
            :return: Um DataFrame contendo os resultados da consulta executada.
        """

        return connector.execute_query(query)

    def process_data(self, df_sme, df_sas):
        """
            Realiza as transformações necessárias nos DataFrames.

            :param df_sme: DataFrame com os dados SME.
            :param df_sas: DataFrame com os dados SAS.
            :type df_sme: pandas.DataFrame
            :type df_sas: pandas.DataFrame
            :return: DataFrame com os dados SME e SAS unidos e tratados.
            :rtype: pandas.DataFrame
        """
        df_sme['id'] = df_sme['id'].apply(self.md5)
        df_sas['id'] = df_sas['id'].apply(self.md5)
        
        df_merged = df_sme.merge(df_sas, on='id', how='left')

        df_merged = df_merged.drop_duplicates()

        df_merged['data_nascimento_pf'] = df_merged['data_nascimento_pf'].fillna('1900-01-01')
        df_merged['Idade'] = df_merged['Idade'].fillna(0)
        df_merged['cod_dap'] = df_merged['cod_dap'].fillna('N/I')
        df_merged['nirf'] = df_merged['nirf'].fillna('N/I')
        df_merged['tipo_empreendimento'] = df_merged['tipo_empreendimento'].fillna('N/I')
        df_merged['unidade_organizacional'] = df_merged['unidade_organizacional'].fillna('N/I')
        # df_merged['cod_caf'] = df_merged['cod_caf'].fillna(0)
        # df_merged['cod_caepf'] = df_merged['cod_caepf'].fillna(0)
        # df_merged['cod_pescador'] = df_merged['cod_pescador'].fillna(0)
        # df_merged['inscricao_estadual'] = df_merged['inscricao_estadual'].fillna(0)
        # df_merged['cod_sicab'] = df_merged['cod_sicab'].fillna(0)

        return df_merged

    def load_to_database(self, df, table_name, data_types):
        """
            Carrega dados processados na tabela do banco de dados de destino em lotes.

            :param df: DataFrame contendo os dados processados a serem carregados.
            :type df: pandas.DataFrame
            :param table_name: Nome da tabela de destino no banco de dados.
            :type table_name: str
            :param data_types: Dicionário que especifica o tipo de dados para cada coluna na tabela de destino.
        """

        engine = self.destination_connector.get_engine()

        batch_size = 50000
        num_batches = (len(df) // batch_size) + 1
        print(f"Numero de batches: {num_batches}")

        for i in range(num_batches):
            start = i * batch_size
            end = start + batch_size
            df_batch = df.iloc[start:end]
            df_batch.to_sql(
                table_name
                , con=engine
                , if_exists='append'
                , index=False
                , dtype=data_types
            )
            print(f"Carga efetuada para a tabela {table_name} - Partição {i + 1}")

    def load_query(self, file_path, **params):
        """
            Lê um arquivo de query e o retorna formatado com os parâmetros.
            
            :param file_path: Caminho do arquivo de query.
            :param params: Parâmetros a serem formatados na query.
            :type file_path: str
            :type params: dict[str, str]
            :return: Query formatada com os parâmetros.
        """
        with open(file_path, 'r') as file:
            query = file.read()
            try:
                return query.format(**params)
            except KeyError as e:
                raise ValueError(f"Parâmetro ausente para a query: {e}")
    
    def truncate_table(self, table_name):
        """
            Remove todos os registros de uma tabela de destino.

            :param table_name: Nome da tabela de destino.
            :type table_name: str
        """
        query = text(f"DELETE FROM dbo.{table_name}")
        engine = self.destination_connector.get_engine()
        with engine.connect() as connection:
            connection.execute(query)
            connection.commit()

    def md5(self, column):
        """
            Retorna o valor em MD5 de uma coluna.

            :param column: Coluna a ser transformada em MD5.
            :type column: str
            :return: Valor em MD5 da coluna.
        """
        return hashlib.md5(str(column).encode()).hexdigest()