import requests
import pandas as pd

def carregar_estimativas_sidra() -> pd.DataFrame:
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

    # Conversões úteis
    df_total["valor"] = pd.to_numeric(df_total["valor"], errors="coerce")
    df_total["ano"] = pd.to_numeric(df_total["ano"], errors="coerce")
    df_total["ano_referencia"] = pd.to_numeric(df_total["ano_referencia"], errors="coerce")

    return df_total

df_total = carregar_estimativas_sidra()

print(df_total)