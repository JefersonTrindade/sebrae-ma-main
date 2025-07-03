# Educação Empreendedora

Este projeto é uma extensão do sistema de ETL para atender às necessidades do programa Educação Empreendedora. Ele realiza extração, transformação e carga (ETL) de dados relacionados ao programa, com a opção de exportar dados em formatos como Parquet, CSV, JSON e XLSX.

## Estrutura do Projeto

A estrutura do projeto está organizada de forma modular para facilitar a manutenção e expansão:

```
.
├── database
├── data_types
├── etl
├── exporter
├── exports
├── queries
├── main.py
```

- **`database/`**: Scripts para gerenciar conexões com bancos de dados.
- **`data_types/`**: Tipos de dados utilizados nas tabelas de destino.
- **`etl/`**: Implementação do fluxo ETL (extração, transformação e carga).
- **`exporter/`**: Funções para exportação de dados.
- **`exports/`**: Diretório onde os arquivos exportados são salvos.
- **`queries/`**: Contém as consultas SQL utilizadas no processo ETL.
- **`main.py`**: Orquestra o fluxo principal do ETL.
- **`atendimentos_edu_empreendedora.py`**: Processa as informações específicas da Educação Empreendedora.

## Instalação

1. Clone o repositório:

   ```bash
   git clone https://github.com/seuprojeto/educacao_empreendedora.git
   cd educacao_empreendedora
   ```

2. Configure o ambiente virtual e instale as dependências:

   ```bash
   python -m venv venv
   source venv/bin/activate # No Windows: venv\Scripts\activate
   pip install -r requirements.txt
   ```

3. Configure os bancos de dados no arquivo `main.py` ou `atendimentos_edu_empreendedora.py`.

## Como Usar

1. Configure os detalhes da conexão no arquivo `main.py`:

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

2. Execute o script principal para processar os dados gerais:

   ```bash
   python main.py
   ```

3. Para processar informações relacionadas à Educação Empreendedora, execute o script específico:

   ```bash
   python atendimentos_edu_empreendedora.py
   ```

4. Para habilitar a exportação de dados, ajuste o parâmetro `export_to_file` no arquivo correspondente:

   ```python
   export_to_file = True
   ```

5. Escolha o formato de exportação desejado:

   ```python
   data_exporter = DataExporter(export_enabled=export_to_file, export_format='xlsx')
   ```

## Funcionalidades Principais

### ETL (Extract, Transform, Load)

- **Extração**: Dados são carregados a partir de fontes confiáveis utilizando SQL dinâmico.
- **Transformação**: Aplicação de regras específicas e combinação de tabelas relacionadas.
- **Carga**: Envio para tabelas configuradas com suporte a tipos de dados customizados.

### Exportação de Dados

- **Formatos Suportados**: Parquet, CSV, JSON e XLSX.
- **Caminho de Saída**: Diretório `exports/`.

## Contribuição

1. Faça um fork do repositório.
2. Crie um branch para suas modificações:
   ```bash
   git checkout -b minha-feature
   ```
3. Envie suas modificações:
   ```bash
   git push origin minha-feature
   ```
4. Abra um Pull Request.