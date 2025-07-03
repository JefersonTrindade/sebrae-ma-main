import pyodbc

# Configurações de conexão
# server = '10.1.101.120'
# database = 'Siacweb'
# username = 'sebraema.qualificar_ti'
# password = 'e59iUzX7nrM0yNq188X8'

server = '10.1.100.167'
database = 'SMEDW_V3_DIM'

# Conectando ao SQL Server
# conn_str = f'DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};UID={username};PWD={password}'
conn_str = (
    f'DRIVER={{ODBC Driver 17 for SQL Server}};'
    f'SERVER={server};'
    f'DATABASE={database};'
    f'Trusted_Connection=yes;'
)
conn = pyodbc.connect(conn_str)
cursor = conn.cursor()

# Consultar todas as tabelas do banco
cursor.execute("""
    SELECT TABLE_SCHEMA, TABLE_NAME
    FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_TYPE = 'BASE TABLE'
    ORDER BY TABLE_SCHEMA, TABLE_NAME
""")

tabelas = cursor.fetchall()

ddl_geradas = []

# Loop pelas tabelas
for schema, tabela in tabelas:
    cursor.execute(f"""
        SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, NUMERIC_PRECISION, NUMERIC_SCALE, IS_NULLABLE
        FROM INFORMATION_SCHEMA.COLUMNS
        WHERE TABLE_SCHEMA = ? AND TABLE_NAME = ?
        ORDER BY ORDINAL_POSITION
    """, (schema, tabela))

    colunas = cursor.fetchall()

    ddl = f"CREATE TABLE [{schema}].[{tabela}] (\n"

    linhas_coluna = []
    for col in colunas:
        nome = col.COLUMN_NAME
        tipo = col.DATA_TYPE
        nullable = col.IS_NULLABLE
        linha = f"    [{nome}] {tipo.upper()}"

        # Tipagem adicional
        if tipo in ['varchar', 'char', 'nvarchar', 'nchar']:
            if col.CHARACTER_MAXIMUM_LENGTH == -1:
                linha += f"(MAX)"
            else:
                linha += f"({col.CHARACTER_MAXIMUM_LENGTH})"
        elif tipo in ['decimal', 'numeric']:
            linha += f"({col.NUMERIC_PRECISION},{col.NUMERIC_SCALE})"

        if nullable == 'NO':
            linha += " NOT NULL"
        else:
            linha += " NULL"

        linhas_coluna.append(linha)

    ddl += ",\n".join(linhas_coluna)
    ddl += "\n);\n\n"

    ddl_geradas.append(ddl)
    print(f"DDL gerada para a tabela: {schema}.{tabela}")

# Salvar tudo em um arquivo
with open('ddls_sme.sql', 'w', encoding='utf-8') as f:
    f.writelines(ddl_geradas)

print("DDLs salvas no arquivo 'ddls_sql_server.sql'.")