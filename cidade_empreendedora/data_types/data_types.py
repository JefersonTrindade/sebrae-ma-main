from sqlalchemy import types

data_types_municipio = {
    "code_muni": types.CHAR(10),
    "municipio": types.VARCHAR(255),
    "nm_candidato": types.VARCHAR(300),
    "ds_genero": types.VARCHAR(255),
    "unidade_negocios": types.VARCHAR(255),
}

data_types_pop_residente_2022 = {
    "code_muni": types.CHAR(7),
    "municipio": types.VARCHAR(100),
    "populacao_residente_2022": types.INTEGER,
    "posicao_nacional_populacional": types.INTEGER,
    "posicao_estadual_populacional": types.INTEGER,
}

data_types_pib_percapita = {
    "code_muni": types.CHAR(7),
    "pib_per_capita": types.FLOAT,
    "posicao_na_pib_per_capita": types.INTEGER,
    "posicao_estadual_pib_per_capita": types.INTEGER,
}

data_types_densidade_demografica = {
    "code_muni": types.CHAR(7),
    "densidade_demografica": types.FLOAT,
}

data_types_receitas_fiscais = {
    "municipio": types.VARCHAR(100),
    "prop_receitas_fiscais_externo": types.VARCHAR(20),
}

data_types_idh_2010 = {
    "code_muni": types.CHAR(7),
    "idh": types.FLOAT,
    "posicao_nacional_idh": types.INTEGER,
    "posicao_estadual_idh": types.INTEGER,
}

data_types_pib_mun = {
    "code_muni": types.CHAR(7),
    "pib_total_mil_reais": types.FLOAT,
    "perc_pib_agropecuaria": types.FLOAT,
    "perc_pib_industria": types.FLOAT,
    "perc_pib_servicos": types.FLOAT,
    "perc_pib_adm_publica": types.FLOAT,
    "perc_pib_impostos": types.FLOAT,
}

data_types_rais = {
    "code_muni_6": types.CHAR(6),
    "empregos_formais": types.INTEGER,
    "remuneracao": types.FLOAT,
    "v_salario_medio_sm": types.FLOAT,
    "rais_ranking_na_salario_medio_sm": types.INTEGER,
}

data_types_mpe = {
    "code_muni": types.CHAR(7),
    "mpe": types.FLOAT,
    "perc_mpe_estado": types.FLOAT,
    "perc_agropecuaria_mpe": types.FLOAT,
    "perc_industria_mpe": types.FLOAT,
    "perc_construcao_mpe": types.FLOAT,
    "perc_comercio_mpe": types.FLOAT,
    "perc_servicos_mpe": types.FLOAT,
}

data_types_estimativas_sidra = {
    "nivel_territorial_codigo": types.VARCHAR(2),
    "nivel_territorial": types.VARCHAR(255),
    "unidade_medida_codigo": types.VARCHAR(50),
    "unidade_medida": types.VARCHAR(255),
    "valor": types.FLOAT,
    "uf_codigo": types.VARCHAR(50),
    "uf": types.VARCHAR(255),
    "variavel_codigo": types.INTEGER,
    "variavel": types.VARCHAR(255),
    "ano_codigo": types.INTEGER,
    "ano": types.INTEGER,
    "sexo_codigo": types.VARCHAR(50),
    "sexo": types.VARCHAR(20),
    "idade_codigo": types.VARCHAR(50),
    "idade": types.VARCHAR(255),
    "ano_referencia_codigo": types.INTEGER,
    "ano_referencia": types.INTEGER,
}
