from sqlalchemy import create_engine
import pandas as pd

class DatabaseConnector:
    """Classe para gerenciar conexões com bancos de dados."""
    def __init__(self, server, database, username=None, password=None, driver='ODBC+Driver+17+for+SQL+Server'):
        """Construtor da classe DatabaseConnector.
        Args:
            server (str): Endereço do servidor do banco de dados.
            database (str): Nome do banco de dados.
            username (str, opcional): Nome do usuário a ser utilizado na conexão ao banco.
            password (str, opcional): Senha do usuário a ser utilizado na conexão ao banco.
            driver (str, opcional): Nome do driver ODBC a ser utilizado. Padrão: 'ODBC+Driver+17+for+SQL+Server'.
        """

        self.server = server
        self.database = database
        self.username = username
        self.password = password
        self.driver = driver

    def get_engine(self):
        """
        Cria um mecanismo SQLAlchemy usando a string de conexão para o banco de dados.

        Constrói a string de conexão com base no nome de usuário ser fornecido.
        Se o nome de usuário for fornecido, ele usa a autenticação do SQL Server; caso contrário, ele usa
        a autenticação do Windows com uma conexão confiável.

        Retorno:
            sqlalchemy.engine.base.Engine: O objeto do mecanismo SQLAlchemy para a conexão do banco de dados.
        """

        connection_string = (
            f"mssql+pyodbc://{self.username}:{self.password}@{self.server}/{self.database}?driver={self.driver}"
            if self.username
            else f"mssql+pyodbc://@{self.server}/{self.database}?driver={self.driver}&trusted_connection=yes"
        )
        return create_engine(connection_string)

    def execute_query(self, query):
        """
        Executa uma consulta SQL no banco de dados conectado e retorna o resultado como um DataFrame.

        Args:
            query (str): A consulta SQL a ser executada.

        Retorno:
            pandas.DataFrame: O resultado da consulta como um DataFrame.
        """
        engine = self.get_engine()
        with engine.connect() as connection:
            return pd.read_sql(query, connection)
        