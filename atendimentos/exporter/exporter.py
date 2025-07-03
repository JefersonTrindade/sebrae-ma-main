import pandas as pd
import os

class DataExporter:
    def __init__(self, export_enabled=False, export_dir='exports'):
        """
        Classe para exportar DataFrames para arquivos em diferentes formatos.

        :param export_enabled: Flag para habilitar/desabilitar a exportação.
        :param export_dir: Diretório onde os arquivos serão salvos.
        """
        self.export_enabled = export_enabled
        self.export_dir = export_dir

        if self.export_enabled and not os.path.exists(self.export_dir):
            os.makedirs(self.export_dir)

    def export(self, df, file_name, file_format='parquet'):
        """
        Exporta um DataFrame para o formato especificado.

        :param df: DataFrame a ser exportado.
        :param file_name: Nome do arquivo (sem extensão).
        :param file_format: Formato de exportação ('parquet', 'csv', 'xlsx', 'json').
        """
        if not self.export_enabled:
            print("Exportação desabilitada. Nenhum arquivo foi gerado.")
            return

        if not isinstance(df, pd.DataFrame):
            raise ValueError("O objeto fornecido não é um DataFrame do pandas.")

        file_path = os.path.join(self.export_dir, f"{file_name}.{file_format.lower()}")

        try:
            if file_format == 'parquet':
                df.to_parquet(file_path, index=False)
            elif file_format == 'csv':
                df.to_csv(file_path, index=False)
            elif file_format == 'xlsx':
                df.to_excel(file_path, index=False, engine='openpyxl')
            elif file_format == 'json':
                df.to_json(file_path, orient='records', lines=True)
            else:
                raise ValueError(f"Formato '{file_format}' não suportado. Use 'parquet', 'csv', 'xlsx' ou 'json'.")

            print(f"Arquivo salvo com sucesso em: {file_path}")
        except Exception as e:
            print(f"Erro ao exportar o arquivo: {e}")