import argparse
from datetime import datetime

from database.DatabaseConnector import DatabaseConnector
from etl.etl_process import ETLProcess
from data_types.data_types import (
    data_types_municipio,
    data_types_pop_residente_2022,
    data_types_pib_percapita,
    data_types_densidade_demografica,
    data_types_receitas_fiscais,
    data_types_idh_2010,
    data_types_pib_mun,
    data_types_rais,
    data_types_mpe,
    data_types_estimativas_sidra,
)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Executa pipeline ETL para tabelas específicas ou todas com --all")
    parser.add_argument(
        "--all",
        action="store_true",
        help="Executa ETL para todas as tabelas",
    )
    parser.add_argument(
        "tabelas",
        nargs="*",
        help="Lista de tabelas a processar (ex: municipio pop_residente_2022)",
    )

    args = parser.parse_args()

    print(f"🔄 Iniciando pipeline ETL às {datetime.today()}")

    USER = "dw_uim"
    PASSWORD = "M3rcad0"
    HOST = "10.11.4.21"
    PORT = 1433
    DB_NAME = "dw_uim"

    connector = DatabaseConnector(USER, PASSWORD, HOST, PORT, DB_NAME)
    etl = ETLProcess(connector)

    dataframes = {
        "municipio": (etl.carregar_base_municipios, data_types_municipio),
        "pop_residente_2022": (etl.carregar_pop_residente_2022, data_types_pop_residente_2022),
        "pib_per_capita": (etl.carregar_pib_per_capita, data_types_pib_percapita),
        "densidade_demografica": (etl.carregar_densidade_demografica, data_types_densidade_demografica),
        "receitas_fiscais_externas": (etl.carregar_receitas_fiscais_externas, data_types_receitas_fiscais),
        "idh_2010": (etl.carregar_idh_2010, data_types_idh_2010),
        "pib_mun": (etl.carregar_pib_setores, data_types_pib_mun),
        "rais_2023": (etl.carregar_rais_2023, data_types_rais),
        "mpe_2025": (etl.carregar_mpe_2025, data_types_mpe),
        "estimativas_sidra": (etl.carregar_estimativas_sidra, data_types_estimativas_sidra),
    }

    if args.all:
        tabelas_a_executar = list(dataframes.keys())
    else:
        tabelas_a_executar = args.tabelas

    for nome_tabela in tabelas_a_executar:
        if nome_tabela not in dataframes:
            print(f"⚠️  Tabela '{nome_tabela}' não é reconhecida e será ignorada.")
            continue

        func, dtype = dataframes[nome_tabela]
        try:
            print(f"➡️ Carregando dados para tabela: {nome_tabela}")
            df = func()
            etl.load(df, nome_tabela, dtype)
        except Exception as e:
            print(f"❌ Erro ao processar '{nome_tabela}': {e}")
            continue

    print(f"✅ Pipeline ETL finalizado às {datetime.today()}")