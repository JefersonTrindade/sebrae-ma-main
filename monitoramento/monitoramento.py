import tkinter as tk
from tkinter import scrolledtext
import subprocess
import psutil
import threading
import time
import datetime

PIPELINE_SCRIPT = r"C:\\Users\\qualificar_ti\\Documents\\sebrae-ma\\atendimentos\\main.py"
pipeline_processo = None

# ======================= Funções principais =======================

def agendador_pipeline():
    while True:
        agora = datetime.datetime.now()
        proxima_execucao = agora.replace(hour=7, minute=0, second=0, microsecond=0)

        if agora >= proxima_execucao:
            proxima_execucao += datetime.timedelta(days=1)

        tempo_espera = (proxima_execucao - agora).total_seconds()
        atualizar_log(f"Próxima execução agendada para: {proxima_execucao.strftime('%Y-%m-%d %H:%M:%S')}")
        
        for i in range(int(tempo_espera)):
            time.sleep(1)
            if i % 3600 == 0 and i != 0:
                horas_restantes = int((tempo_espera - i) // 3600)
                atualizar_log(f"Faltam {horas_restantes} horas para a próxima execução agendada...")

        iniciar_pipeline()

def iniciar_pipeline(valor_ppa=None):
    global pipeline_processo

    if pipeline_processo and pipeline_processo.poll() is None:
        atualizar_log("A pipeline já está rodando.")
        return

    if not valor_ppa:
        valor_ppa = entrada_a.get().strip()
        if not valor_ppa:
            valor_ppa = datetime.datetime.today().strftime("%Y%m")

    limpar_log()
    atualizar_log(f"Pipeline iniciada com PPA = {valor_ppa} às {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")

    try:
        pipeline_processo = subprocess.Popen(
            ["python", PIPELINE_SCRIPT, valor_ppa],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            bufsize=1
        )
        threading.Thread(target=monitorar_saida, daemon=True).start()
        threading.Thread(target=aguardar_finalizacao, daemon=True).start()
    except Exception as e:
        atualizar_log(f"Erro ao iniciar pipeline: {e}")

def executar_pipeline_agora():
    threading.Thread(target=iniciar_pipeline, daemon=True).start()

def aguardar_finalizacao():
    global pipeline_processo
    pipeline_processo.wait()
    atualizar_log("Pipeline finalizada.")
    resetar_inputs()

# ======================= Funções auxiliares =======================

def monitorar_saida():
    global pipeline_processo
    if not pipeline_processo:
        return

    for linha in pipeline_processo.stdout:
        atualizar_log(linha.strip())

    for linha in pipeline_processo.stderr:
        atualizar_log(f"ERRO: {linha.strip()}")

def parar_pipeline():
    global pipeline_processo
    if pipeline_processo and pipeline_processo.poll() is None:
        pipeline_processo.terminate()
        atualizar_log("Pipeline foi interrompida.")
        resetar_inputs()
    else:
        atualizar_log("A pipeline não está em execução.")

def verificar_status():
    while True:
        if pipeline_processo and pipeline_processo.poll() is None:
            status_label.config(text="Rodando", fg="green")
        else:
            status_label.config(text="Agendado", fg="blue")
        time.sleep(5)

def atualizar_log(mensagem):
    log_area.insert(tk.END, mensagem + "\n")
    log_area.see(tk.END)

def limpar_log():
    log_area.delete("1.0", tk.END)

def resetar_inputs():
    entrada_a.delete(0, tk.END)

# ======================= Interface Gráfica =======================

janela = tk.Tk()
janela.title("Monitor da Pipeline de Dados - SEBRAE-MA")
janela.geometry("600x400")

frame = tk.Frame(janela)
frame.pack(pady=10)

tk.Label(frame, text="Status da Pipeline:").pack(side=tk.LEFT, padx=5)

status_label = tk.Label(frame, text="Agendado", fg="blue")  # <- Status inicial como "Agendado"
status_label.pack(side=tk.LEFT, padx=5)

tk.Label(janela, text="Valor PPA (YYYYMM)").pack()
entrada_a = tk.Entry(janela)
entrada_a.pack()

tk.Button(janela, text="Executar Agora", command=executar_pipeline_agora).pack(pady=5)
tk.Button(janela, text="Parar", command=parar_pipeline).pack(pady=5)

log_area = scrolledtext.ScrolledText(janela, height=15)
log_area.pack(fill=tk.BOTH, expand=True)

# Threads iniciais
threading.Thread(target=verificar_status, daemon=True).start()
threading.Thread(target=agendador_pipeline, daemon=True).start()

janela.mainloop()