# Atendimentos

Este projeto realiza um processo de ETL (Extract, Transform, Load) com funcionalidades adicionais para exportação de dados em diferentes formatos (Parquet, CSV, JSON e XLSX). Ele utiliza conexões com diferentes bancos de dados e permite a manipulação eficiente de grandes volumes de dados.

## Estrutura do Projeto

A estrutura do projeto está organizada em módulos para garantir a separação de responsabilidades e manutenção facilitada:

```
.
├── database
├── data_types
├── etl
├── exporter
├── exports
├── queries
└── main.py
```

- **`database/`**: Contém os scripts para gerenciamento das conexões com os bancos de dados.
- **`data_types/`**: Define os tipos de dados utilizados nas tabelas de destino.
- **`etl/`**: Implementa as etapas de extração, transformação e carga de dados.
- **`exporter/`**: Implementa a funcionalidade de exportação de dados em diferentes formatos.
- **`exports/`**: Diretório destinado aos arquivos gerados pelas exportações.
- **`queries/`**: Contém as consultas SQL utilizadas no processo ETL.
- **`main.py`**: Arquivo principal que orquestra o fluxo do projeto.

## Instalação

1. Clone este repositório:
   ```bash
   git clone https://github.com/seuprojeto/atendimentos.git
   cd atendimentos
   ```

2. Crie um ambiente virtual e instale as dependências:
   ```bash
   python -m venv venv
   source venv/bin/activate # No Windows: venv\Scripts\activate
   pip install -r requirements.txt
   ```

3. Configure os bancos de dados no arquivo `main.py`.

## Como Usar

1. Configure as credenciais de conexão no arquivo `main.py`:
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

2. Execute o script principal:
   ```bash
   python main.py
   ```

3. Para habilitar a exportação de dados, ajuste o parâmetro `export_to_file` no arquivo `main.py`:
   ```python
   export_to_file = True
   ```

4. Escolha o formato de exportação desejado:
   ```python
   data_exporter = DataExporter(export_enabled=export_to_file, export_format='parquet')
   ```

## Funcionalidades Principais

### ETL (Extract, Transform, Load)
- **Extração**: Carrega dados de bancos de dados de origem com suporte a consultas dinâmicas.
- **Transformação**: Processa e une DataFrames conforme as regras de negócio.
- **Carga**: Insere dados no banco de dados de destino com tipos de dados predefinidos.

### Exportação de Dados
- **Formatos Suportados**: Parquet, CSV, JSON e XLSX.
- **Caminho de Saída**: Diretório `exports/`.

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