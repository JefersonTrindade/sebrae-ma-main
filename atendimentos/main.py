import os, sys
from database.DatabaseConnector import DatabaseConnector
from etl.etl_process import ETLProcess
from data_types.destination_table import data_types
from exporter.exporter import DataExporter
from datetime import datetime

if __name__ == "__main__":
    print(f"Executando pipeline ETL às {datetime.today()}")
    # Configurações dos bancos de dados
    sme_config = {
        'server': '10.1.100.167',
        'database': 'SMEDW_V3_DIM'
    }

    sas_config = {
        'server': '10.1.101.120',
        'database': 'Siacweb',
        'username': 'sebraema.qualificar_ti',
        'password': 'e59iUzX7nrM0yNq188X8'
    }

    destination_config = {
        'server': '10.11.4.21',
        'database': 'dw_uim',
        'username': 'dw_uim',
        'password': 'M3rcad0'
    }

    # Obtem o diretório das queries
    base_dir = os.path.dirname(os.path.abspath(__file__))
    query_sme_path = os.path.join(base_dir, "queries", "sme_atendimentos.sql")
    query_sas_path = os.path.join(base_dir, "queries", "sas_atendimentos.sql")

    # Data atual
    if len(sys.argv) > 1:
        ppa_param = sys.argv[1]
    else:
        ppa_param = datetime.today().strftime("%Y%m")

    # Conectores
    sme_connector = DatabaseConnector(**sme_config)
    sas_connector = DatabaseConnector(**sas_config)
    destination_connector = DatabaseConnector(**destination_config)

    # Processador ETL
    etl = ETLProcess(sme_connector, sas_connector, destination_connector)

    # Queries
    query_sme = etl.load_query(file_path=query_sme_path, ppa_param=ppa_param)
    query_sas = etl.load_query(file_path=query_sas_path)

    # Extração
    df_sme = etl.load_data(query_sme, sme_connector)
    df_sas = etl.load_data(query_sas, sas_connector)

    # Transformação
    df_final = etl.process_data(df_sme, df_sas)

    # Carga no destino
    table_name = "sme_execucao_atendimento_current_year"
    etl.truncate_table(table_name)
    etl.load_to_database(df_final, table_name, data_types)

    # Exportação de dados (opcional)
    export_to_file = False
    if export_to_file:
        print("Iniciando a exportação dos dados")
        file_name = table_name

        data_exporter = DataExporter(export_enabled=export_to_file)

        # Exportando no formato padrão (parquet)
        data_exporter.export(df_final, file_name)
    else:
        print("Dados não exportados")

    print(f"Pipeline ETL finalizada às {datetime.today()}")