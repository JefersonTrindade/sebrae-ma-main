from sqlalchemy import create_engine, Table, MetaData, Column, inspect
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from sqlalchemy import text

Base = declarative_base()

class DatabaseConnector:
    def __init__(self, user, password, host, port, db_name, driver="ODBC Driver 17 for SQL Server"):
        """
        Inicializa o DatabaseConnector com os detalhes de conexão do banco de dados fornecidos.
        """
        self.connection_string = (
            f"mssql+pyodbc://{user}:{password}@{host}:{port}/{db_name}?driver={driver.replace(' ', '+')}"
        )
        self.engine = create_engine(self.connection_string)
        self.metadata = MetaData()
        self.Session = sessionmaker(bind=self.engine)

    def create_table_from_dict(self, table_name, data_types_dict):
        """
        Cria uma tabela no banco de dados com base em um dicionário de tipos de dados.
        """
        columns = [Column(col_name, col_type) for col_name, col_type in data_types_dict.items()]
        table = Table(table_name, self.metadata, *columns, extend_existing=True)
        table.create(self.engine, checkfirst=True)
        print(f"✅ Tabela '{table_name}' criada com sucesso.")

    def delete_table(self, table_name):
        """
        Remove todos os registros de uma tabela de destino.
        """
        query = text(f"DELETE FROM dbo.{table_name}")
        with self.engine.connect() as connection:
            connection.execute(query)
            connection.commit()
            print(f"✅ Dados da tabela '{table_name}' apagados!")

    def insert_dataframe(self, df, table_name, dtype):
        """
        Insere um DataFrame em uma tabela do banco de dados em lotes.
        """
        self.add_missing_columns(table_name, dtype)

        batch_size = 50000
        num_batches = (len(df) // batch_size) + 1
        print(f"⚠️ Numero de batches: {num_batches}")

        for i in range(num_batches):
            start = i * batch_size
            end = start + batch_size
            df_batch = df.iloc[start:end]
            df_batch.to_sql(
                table_name,
                con=self.engine,
                if_exists='append',
                index=False,
                dtype=dtype
            )
            print(f"✅ Carga efetuada para a tabela {table_name} - Partição {i + 1}")

    def add_missing_columns(self, table_name, data_types_dict):
        """
        Adiciona colunas ausentes a uma tabela existente com base no dicionário data_types_dict.
        """
        inspector = inspect(self.engine)
        existing_columns = set(col['name'].lower() for col in inspector.get_columns(table_name))

        alter_statements = []
        for col_name, col_type in data_types_dict.items():
            if col_name.lower() not in existing_columns:
                sql_type = self._map_sqlalchemy_type_to_sql(col_type)
                alter_statements.append(f"ALTER TABLE {table_name} ADD [{col_name}] {sql_type};")

        if alter_statements:
            with self.engine.connect() as connection:
                for stmt in alter_statements:
                    print(f"Executando: {stmt}")
                    connection.execute(text(stmt))
                connection.commit()
            print(f"✅ Colunas adicionadas na tabela '{table_name}'.")
        else:
            print(f"✅ Nenhuma coluna nova para adicionar na tabela '{table_name}'.")

    def _map_sqlalchemy_type_to_sql(self, col_type):
        from sqlalchemy import Integer, Float, String, DateTime, Boolean, CHAR, VARCHAR

        if isinstance(col_type, Integer):
            return "INT"
        elif isinstance(col_type, Float):
            return "FLOAT"
        elif isinstance(col_type, Boolean):
            return "BIT"
        elif isinstance(col_type, DateTime):
            return "DATETIME"
        elif isinstance(col_type, CHAR):
            return f"CHAR({col_type.length})" if col_type.length else "CHAR(1)"
        elif isinstance(col_type, VARCHAR):
            return f"VARCHAR({col_type.length})" if col_type.length else "VARCHAR(255)"
        elif isinstance(col_type, String):
            return f"VARCHAR({col_type.length})" if col_type.length else "VARCHAR(255)"
        else:
            return "VARCHAR(255)"