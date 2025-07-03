import pandas as pd
import requests
from database.DatabaseConnector import DatabaseConnector


class ETLProcess:
    def __init__(self, db_connector: DatabaseConnector):
        self.db = db_connector

    def _normalize_columns(self, df: pd.DataFrame) -> pd.DataFrame:
        df.columns = (
            df.columns.str.strip()
            .str.lower()
            .str.replace(" ", "_")
            .str.replace("-", "_")
            .str.replace(r"[^\w\d_]", "", regex=True)
        )
        return df

    def load(self, df: pd.DataFrame, table_name: str, data_types: dict):
        df = self._normalize_columns(df)
        self.db.create_table_from_dict(table_name, data_types)
        self.db.delete_table(table_name)
        self.db.insert_dataframe(df, table_name, data_types)

    def carregar_base_municipios(self) -> pd.DataFrame:
        path = "planilhas_origem/BaseComTexto.xlsx"
        df = pd.read_excel(path)
        df = df[["Codigo_do_Municipio", "MUNICÍPIO", "NM_CANDIDATO", "DS_GENERO", "Unidade_Negocios"]]

        df["Codigo_do_Municipio"] = df["Codigo_do_Municipio"].astype(str).str.replace(".0", "", regex=False).str.zfill(7)

        substituicoes = {
            "Santana Do Maranhão": "2110237",
            "Anajatuba": "2100709",
            "Guimarães": "2104909"
        }

        df["Codigo_do_Municipio"] = df.apply(
            lambda x: substituicoes.get(x["MUNICÍPIO"], x["Codigo_do_Municipio"]), axis=1
        )

        df = df.rename(columns={"Codigo_do_Municipio": "code_muni"})
        return self._normalize_columns(df)

    def carregar_densidade_demografica(self) -> pd.DataFrame:
        url = "https://apisidra.ibge.gov.br/values/t/4714/n6/all/v/614/p/2022"
        response = requests.get(url)
        if response.status_code != 200:
            raise Exception(f"Erro ao acessar a API SIDRA: {response.status_code}")
        data = response.json()

        colunas = data[0]
        df = pd.DataFrame(data[1:])
        df.columns = colunas.values()

        df = df[["Município (Código)", "Valor"]]

        df = df.rename(columns={
            "Município (Código)": "code_muni",
            "Valor": "densidade_demografica"
        })

        df = df[df["code_muni"].str.startswith("21")].copy()

        df["code_muni"] = df["code_muni"].astype(str)
        df["densidade_demografica"] = pd.to_numeric(df["densidade_demografica"], errors="coerce")

        return self._normalize_columns(df)

    def carregar_estimativas_sidra(self) -> pd.DataFrame:
        urls = [
            "https://apisidra.ibge.gov.br/values/t/7358/n3/all/v/all/p/all/c2/all/c287/all/c1933/49039,49040,49041,49042,49043",
            "https://apisidra.ibge.gov.br/values/t/7358/n3/all/v/all/p/all/c2/all/c287/all/c1933/49044,49045,49046,49047,49048"
        ]

        lista_dfs = []

        for url in urls:
            response = requests.get(url)
            response.raise_for_status()

            data = response.json()
            registros = data[1:]  # Ignora o cabeçalho (data[0])

            df = pd.DataFrame([
                {
                    "nivel_territorial_codigo": row.get("NC"),
                    "nivel_territorial": row.get("NN"),
                    "unidade_medida_codigo": row.get("MC"),
                    "unidade_medida": row.get("MN"),
                    "valor": row.get("V"),
                    "uf_codigo": row.get("D1C"),
                    "uf": row.get("D1N"),
                    "variavel_codigo": row.get("D2C"),
                    "variavel": row.get("D2N"),
                    "ano_codigo": row.get("D3C"),
                    "ano": row.get("D3N"),
                    "sexo_codigo": row.get("D4C"),
                    "sexo": row.get("D4N"),
                    "idade_codigo": row.get("D5C"),
                    "idade": row.get("D5N"),
                    "ano_referencia_codigo": row.get("D6C"),
                    "ano_referencia": row.get("D6N")
                }
                for row in registros
            ])

            lista_dfs.append(df)

        df_total = pd.concat(lista_dfs, ignore_index=True)

        df_total["valor"] = pd.to_numeric(df_total["valor"], errors="coerce")
        df_total["ano"] = pd.to_numeric(df_total["ano"], errors="coerce")
        df_total["ano_referencia"] = pd.to_numeric(df_total["ano_referencia"], errors="coerce")

        df_total = df_total[df_total["uf_codigo"] == "21"].copy()

        return self._normalize_columns(df_total)

    def carregar_idh_2010(self) -> pd.DataFrame:
        df = pd.read_excel("planilhas_origem/IDH_2010.xls", names=["code_muni", "idh"])
        df["code_muni"] = df["code_muni"].astype(str)
        df["posicao_nacional_idh"] = df["idh"].rank(ascending=False, method="min")
        df = df[df["code_muni"].str.startswith("21")].copy()
        df["posicao_estadual_idh"] = df["idh"].rank(ascending=False, method="min")
        return self._normalize_columns(df)

    def carregar_mpe_2025(self) -> pd.DataFrame:
        df = pd.read_excel("planilhas_origem/Densidade Empresarial_2025-02-08.xlsx")
        df["perc_mpe_estado"] = ((df["MPE"] / df["MPE"].sum()) * 100).round(2)
        df["perc_agropecuaria_mpe"] = ((df["Agropecuária"] / df["MPE"]) * 100).round(2)
        df["perc_industria_mpe"] = ((df["Indústria"] / df["MPE"]) * 100).round(2)
        df["perc_construcao_mpe"] = ((df["Construção_Civil"] / df["MPE"]) * 100).round(2)
        df["perc_comercio_mpe"] = ((df["Comércio"] / df["MPE"]) * 100).round(2)
        df["perc_servicos_mpe"] = ((df["Serviços"] / df["MPE"]) * 100).round(2)

        df = df.drop(columns=[
            "Agropecuária", "Indústria", "Construção_Civil", "Comércio", "Serviços",
            "Unidade_Negocios", "Municipio", "MEI", "ME", "EPP"
        ])
        df = df.rename(columns={"Codigo_do_Municipio": "code_muni"})
        df["code_muni"] = df["code_muni"].astype(str)
        df = df[df["code_muni"].str.startswith("21")].copy()
        return self._normalize_columns(df)

    def carregar_pib_per_capita(self) -> pd.DataFrame:
        df = pd.read_excel("planilhas_origem/PIB dos Municípios - base de dados 2010-2021.xlsx")
        df.columns = [col.strip().replace("\n", " ") for col in df.columns]
        df = df[df["Ano"] == 2021]
        pib_col = [col for col in df.columns if "Produto Interno Bruto per capita" in col][0]
        df = df[["Código do Município", pib_col]].copy()
        df.columns = ["code_muni", "pib_per_capita"]
        df["pib_per_capita"] = pd.to_numeric(df["pib_per_capita"], errors="coerce")
        df["code_muni"] = df["code_muni"].astype(str)
        df["posicao_na_pib_per_capita"] = df["pib_per_capita"].rank(ascending=False, method="min")
        df = df[df["code_muni"].str.startswith("21")].copy()
        df["posicao_estadual_pib_per_capita"] = df["pib_per_capita"].rank(ascending=False, method="min")
        return self._normalize_columns(df)

    def carregar_pib_setores(self) -> pd.DataFrame:
        colunas_uso = {
            "code_muni": "Código do Município",
            "agro": "Valor adicionado bruto da Agropecuária, \na preços correntes\n(R$ 1.000)",
            "ind": "Valor adicionado bruto da Indústria,\na preços correntes\n(R$ 1.000)",
            "serv": "Valor adicionado bruto dos Serviços,\na preços correntes \n- exceto Administração, defesa, educação e saúde públicas e seguridade social\n(R$ 1.000)",
            "adm": "Valor adicionado bruto da Administração, defesa, educação e saúde públicas e seguridade social, \na preços correntes\n(R$ 1.000)",
            "imp": "Impostos, líquidos de subsídios, sobre produtos, \na preços correntes\n(R$ 1.000)",
            "total": "Produto Interno Bruto, \na preços correntes\n(R$ 1.000)"
        }

        df = pd.read_excel("planilhas_origem/PIB dos Municípios - base de dados 2010-2021.xlsx")

        df = df[df["Ano"] == 2021]
        df = df[list(colunas_uso.values())].copy()
        df = df.rename(columns={colunas_uso["code_muni"]: "code_muni"})

        # Converter para numérico
        for key, col in colunas_uso.items():
            if key != "code_muni":
                df[col] = pd.to_numeric(df[col], errors="coerce")

        # Cálculos
        df["perc_pib_agropecuaria"] = ((df[colunas_uso["agro"]] / df[colunas_uso["total"]]) * 100).round(2)
        df["perc_pib_industria"] = ((df[colunas_uso["ind"]] / df[colunas_uso["total"]]) * 100).round(2)
        df["perc_pib_servicos"] = ((df[colunas_uso["serv"]] / df[colunas_uso["total"]]) * 100).round(2)
        df["perc_pib_adm_publica"] = ((df[colunas_uso["adm"]] / df[colunas_uso["total"]]) * 100).round(2)
        df["perc_pib_impostos"] = ((df[colunas_uso["imp"]] / df[colunas_uso["total"]]) * 100).round(2)


        # Seleção final
        df = df[[
            "code_muni",
            colunas_uso["total"],
            "perc_pib_agropecuaria",
            "perc_pib_industria",
            "perc_pib_servicos",
            "perc_pib_adm_publica",
            "perc_pib_impostos"
        ]]
        df = df.rename(columns={colunas_uso["total"]: "pib_total_mil_reais"})
        df["code_muni"] = df["code_muni"].astype(str)
        df = df[df["code_muni"].str.startswith("21")].copy()
        return self._normalize_columns(df)

    def carregar_pop_residente_2022(self) -> pd.DataFrame:
        url = "https://apisidra.ibge.gov.br/values/t/4709/n6/all/v/93/p/2022"
        response = requests.get(url)
        if response.status_code != 200:
            raise Exception(f"Erro ao acessar a API SIDRA: {response.status_code}")

        data = response.json()
        registros = data[1:]

        df = pd.DataFrame([
            {
                "code_muni": row["D1C"],
                "municipio": row["D1N"],
                "populacao_residente_2022": row["V"]
            }
            for row in registros
        ])

        df["code_muni"] = df["code_muni"].astype(str)
        df["populacao_residente_2022"] = pd.to_numeric(df["populacao_residente_2022"], errors="coerce")
        df["posicao_nacional_populacional"] = df["populacao_residente_2022"].rank(ascending=False, method="min")

        df_ma = df[df["code_muni"].str.startswith("21")].copy()
        df_ma["posicao_estadual_populacional"] = df_ma["populacao_residente_2022"].rank(ascending=False, method="min")

        return self._normalize_columns(df_ma)

    def carregar_rais_2023(self) -> pd.DataFrame:
        vinc = pd.read_csv("planilhas_origem/RAIS_2023_VINCULOS.csv",
                        names=["code_muni_6", "empregos_formais"], skiprows=1, sep=";", on_bad_lines='skip')
        vinc = vinc[vinc["code_muni_6"] != "Total"]
        vinc["empregos_formais"] = pd.to_numeric(vinc["empregos_formais"], errors="coerce")

        rem = pd.read_csv("planilhas_origem/RAIS_2023_VL_REMUNERACAO_NOMINAL.csv",
                        names=["code_muni_6", "remuneracao"], skiprows=1, sep=";", on_bad_lines='skip', dtype={"remuneracao": str})
        rem = rem[rem["code_muni_6"] != "Total"]
        rem["remuneracao"] = rem["remuneracao"].str.replace(",", ".", regex=False).astype(float)

        df = pd.merge(vinc, rem, on="code_muni_6", how="left")

        df["v_salario_medio_sm"] = (df["remuneracao"] / df["empregos_formais"] / 1320).round(2)
        df["rais_ranking_na_salario_medio_sm"] = df["v_salario_medio_sm"].rank(ascending=False, method="min")

        df["code_muni_6"] = df["code_muni_6"].astype(str).str[:6]

        df = df[df["code_muni_6"].str.startswith("21")].copy()

        return self._normalize_columns(df)

    def carregar_receitas_fiscais_externas(self) -> pd.DataFrame:
        df = pd.read_csv("planilhas_origem/Percentual das receitas oriundas de fontes externas [2015].csv",
                         names=["municipio", "prop_receitas_fiscais_externo"], skiprows=1)
        df["prop_receitas_fiscais_externo"] = df["prop_receitas_fiscais_externo"].map(lambda x: f"{x:.1f}")
        return self._normalize_columns(df)