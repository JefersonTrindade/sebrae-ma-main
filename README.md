# Projetos Atendimentos e Educação Empreendedora

Este repositório contém dois projetos principais desenvolvidos para o processamento de dados e geração de informações relevantes: **Atendimentos** e **Educação Empreendedora**. Ambos seguem boas práticas de desenvolvimento e utilizam uma arquitetura modular para facilitar a manutenção e escalabilidade.

## Objetivos Gerais

Os projetos têm como objetivo principal o processamento de dados brutos, com etapas de extração, transformação e carga (ETL), além de funcionalidades adicionais, como exportação de dados em diferentes formatos e organização de queries e tipos de dados.

---

## Estrutura do Repositório

A estrutura do repositório foi planejada para segregar as responsabilidades de cada funcionalidade:

```
.
├── atendimentos
│   ├── database
│   ├── data_types
│   ├── etl
│   ├── exporter
│   ├── exports
│   ├── queries
│   └── main.py
├── educacao_empreendedora
│   ├── database
│   ├── data_types
│   ├── etl
│   ├── exporter
│   ├── exports
│   ├── queries
│   └── main.py
├── README.md
└── requirements.txt
```

### Principais Diretórios

- **`database/`**: Scripts para gerenciamento de conexões com os bancos de dados.
- **`data_types/`**: Definição dos tipos de dados utilizados nas tabelas de destino.
- **`etl/`**: Implementação das etapas de extração, transformação e carga de dados.
- **`exporter/`**: Funcionalidade de exportação de dados em diferentes formatos (Parquet, CSV, JSON e XLSX).
- **`exports/`**: Diretório destinado aos arquivos gerados pelas exportações.
- **`queries/`**: Contém as consultas SQL utilizadas no processo ETL.
- **`main.py`**: Arquivo principal que orquestra o fluxo do projeto.

---

## Funcionalidades dos Projetos

### 1. **Atendimentos**
Este projeto foi desenvolvido para processar dados relacionados a atendimentos e gerar relatórios consolidados. Ele inclui as seguintes funcionalidades:

- **ETL (Extract, Transform, Load):**
  - Extração de dados de diferentes bancos de dados.
  - Aplicação de regras de negócio durante a transformação.
  - Carga de dados no banco de destino com tipos de dados predefinidos.

- **Exportação de Dados:**
  - Suporte aos formatos Parquet, CSV, JSON e XLSX.
  - Diretório de saída configurável.

- **Organização de Queries e Tipos de Dados:**
  - Queries SQL organizadas em arquivos separados para facilitar manutenção.
  - Tipos de dados definidos previamente para evitar inconsistências no banco de destino.

### 2. **Educação Empreendedora**
Este projeto foi desenvolvido para gerenciar e processar dados relacionados a iniciativas de educação empreendedora. Suas principais funcionalidades incluem:

- **ETL (Extract, Transform, Load):**
  - Extração de dados de múltiplas fontes.
  - Consolidação e transformação de dados segundo as regras do projeto.
  - Carregamento de dados no banco de destino.

- **Exportação de Dados:**
  - Suporte à exportação de relatórios em diversos formatos.

- **Escalabilidade e Modularidade:**
  - O código foi projetado para permitir ajustes futuros sem comprometer a estrutura do projeto.

---

## Instalação

1. Clone o repositório:
   ```bash
   git clone https://github.com/seuprojeto/sebrae-ma.git
   cd sebrae-ma
   ```

2. Crie um ambiente virtual e instale as dependências:
   ```bash
   python -m venv venv
   source venv/bin/activate # No Windows: venv\Scripts\activate
   pip install -r requirements.txt
   ```

---

## Configuração

1. Configure as credenciais de conexão no arquivo `main.py` de cada projeto:
   ```python
   sme_config = {
       'server': '10.1.100.167',
       'database': 'SMEDW_V3_DIM'
   }

   destination_config = {
       'server': '10.11.4.21',
       'database': 'dw_uim',
       'username': 'dw_uim',
       'password': 'M3rcad0'
   }
   ```

2. Ajuste o parâmetro para exportação de dados (se necessário):
   ```python
   export_to_file = True
   export_format = 'csv' # Opções: 'parquet', 'csv', 'json', 'xlsx'
   ```

---

## Como Executar

1. Navegue até o diretório do projeto desejado (Atendimentos ou Educação Empreendedora).
2. Execute o arquivo principal:
   ```bash
   python main.py
   ```

---

## Contribuição

1. Crie um fork do repositório.
2. Crie um branch para suas modificações:
   ```bash
   git checkout -b minha-feature
   ```
3. Envie suas modificações:
   ```bash
   git push origin minha-feature
   ```
4. Abra um Pull Request no repositório original.

---
