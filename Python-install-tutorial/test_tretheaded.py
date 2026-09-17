import sys
import time
from concurrent.futures import ThreadPoolExecutor

# 1. Verificar si el GIL está activo
def check_gil_status():
    if hasattr(sys, "_is_gil_enabled"):
        gil_status = "ACTIVADO (Con GIL)" if sys._is_gil_enabled() else "DESACTIVADO (Free-Threaded)"
    else:
        gil_status = "ACTIVADO (Python tradicional sin soporte GIL-free)"
    print(f"=== Estado del GIL: {gil_status} ===")
    print(f"Versión de Python: {sys.version.split()[0]}\n")

# 2. Función intensiva en CPU (cálculo pesado)
def cpu_bound_task(n: int) -> int:
    count = 0
    for i in range(n):
        count += i * i
    return count

def main():
    check_gil_status()

    # Parámetros de la prueba
    total_operations = 4
    work_per_thread = 25_000_000  # 25 millones de iteraciones por hilo

    print(f"Lanzando {total_operations} hilos en paralelo...")
    start_time = time.perf_counter()

    # Ejecución paralela usando HILOS (ThreadPoolExecutor)
    with ThreadPoolExecutor(max_workers=total_operations) as executor:
        futures = [executor.submit(cpu_bound_task, work_per_thread) for _ in range(total_operations)]
        results = [f.result() for f in futures]

    end_time = time.perf_counter()
    elapsed = end_time - start_time

    print(f"Tiempo total de ejecución: {elapsed:.4f} segundos")

if __name__ == "__main__":
    main()