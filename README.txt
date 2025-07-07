==============================
RESPALDO AUTOMÁTICO — Cami 💻
==============================

🧩 Descripción:
Este script de Bash permite realizar respaldos comprimidos (.tar.gz) de una o varias carpetas, mostrando resultados en consola con estilo visual y guardando un historial completo en un log técnico numerado.

🎯 Características:
- Menú interactivo con opciones personalizadas
- Registro automático en log numerado y firmado
- Visualización del historial por fecha o ruta
- Mensajes enriquecidos con colores y emojis en consola

📦 Archivos incluidos:
- backup.sh → El script principal
- log_backups.txt → Historial técnico de respaldos
- documentos_importantes → Carpeta de ejemplo (si está presente)

🛠️ Requisitos:
- Linux con Bash (Debian, Ubuntu, etc.)
- Comando 'zip' instalado

🚀 Uso:
1. Ejecutá el script en terminal con:
   ./backup.sh

2. Elegí entre:
   - Respaldar carpeta fija
   - Cargar rutas personalizadas
   - Ver historial completo
   - Filtrar por fecha o ruta

📘 Log:
Cada respaldo se guarda en 'log_backups.txt' con:
- Fecha
- Ruta respaldada
- Tamaño final
- Número de respaldo
- Firma: Verificado por Cami

🔐 Autoría:
Creado paso a paso por Cami con ❤️ y precisión técnica.
Ideal como utilidad personal o base para proyectos de consola.
