# 🗂️ Automatizador de Backups

![Versión](https://img.shields.io/badge/Versión-1.0-blue)
![Estado](https://img.shields.io/badge/Estado-Estable-brightgreen)
![Licencia](https://img.shields.io/badge/Licencia-MIT-purple)
Script en Bash que realiza copias comprimidas de una carpeta específica y las guarda en un directorio `/backups` con fecha y hora. Ideal para automatizar respaldos en sistemas Linux.

---

## ⚙️ Requisitos

- Sistema operativo Linux
- Bash instalado
- Permisos de escritura en `/backups`

---

## 🚀 Cómo usarlo

Dale permiso de ejecución al script (solo la primera vez):

```bash
chmod +x backup.sh

---
📂 Estructura del proyecto
``` Automatizador-Backups/
├── backup.sh
├── .gitignore
└── README.md
```

---

## 👩‍💻 Autor

**Camila**  
Proyecto de Automatización de Backups en Bash — _Día 9_ 🚀  
[Repositorio en GitHub](https://github.com/soyCamila01)
---

# 🗂️ Automatizador de Backups — Entrada Dinámica (Día 10)

Versión interactiva del script en Bash para crear respaldos comprimidos de múltiples carpetas elegidas por el usuario en tiempo real. Esta versión agrega flexibilidad y validación para que el usuario tenga más control sobre los backups.

---

## ⚙️ Requisitos

- Sistema operativo Linux
- Bash instalado
- Permisos de escritura en `/backups`
- Acceso de lectura a las carpetas que se desean respaldar

---

## 🚀 Cómo usarlo

1. Hacer el script ejecutable (solo la primera vez):

   ```bash
   chmod +x backup.sh
```
- Ingresar rutas de carpetas (una por línea).
Escribir fin para terminar.
---
🧪 Ejemplo de uso:

``` 📦 Ingresá las carpetas que querés respaldar (una por línea).
🛑 Escribí 'fin' para terminar.
Ruta: /etc
Ruta: /home/usuario01/Documentos
Ruta: fin
✅ Backup creado: /backups/backup_2025-07-02_21-10.tar.gz

- ✅ Muestra el tamaño final del archivo `.tar.gz` generado
```

⚠️ Si el backup incluye carpetas protegidas como /etc, ejecutá el script con permisos elevados:
---
```sudo ./backup.sh
```
---
🧠 ¿Qué aprendimos en el Día 10?- Entrada dinámica por consola (read)
- Validación de rutas existentes
- Manejo de arrays en Bash
- Mensajes informativos y abortado limpio si no hay entradas válidas
---
📂 Estructura del proyecto
```Automatizador-Backups/
├── backup.sh
├── .gitignore
├── LICENSE
└── README.md
```
---
📄 LicenciaEste proyecto está disponible bajo la Licencia MIT.
---
👩‍💻 Autor Camila
Proyecto de Automatización de Backups en Bash — Día 10 🚀
---


---
📘 English Version — Backup Automation Script
🗂️ Backup Automator
Version: In Progress
License: MIT License
Bash script that creates compressed backups of specific folders and stores them in a /backups directory with timestamp. Ideal for automating backups in Linux systems.

⚙️ Requirements
- Linux-based operating system
- Bash installed
- Write permissions in /backups directory

🚀 How to use
Give execution permissions to the script (only once):
chmod +x backup.sh



📂 Project Structure
Backup-Automator/
├── backup.sh
├── .gitignore
└── README.md



👩‍💻 Author
Camila
Backup Automation in Bash – Day 9 🚀
GitHub Repository

🗂️ Backup Automator – Dynamic Input (Day 10)
Interactive Bash script to create compressed backups of multiple folders chosen by the user in real-time. This version adds flexibility and validation for greater user control.

⚙️ Requirements
- Linux-based operating system
- Bash installed
- Write permissions in /backups directory
- Read access to folders to be backed up

🚀 How to use
Make the script executable (only once):
chmod +x backup.sh


- Enter folder paths one per line
- Type fin (end) to finish input

🧪 Example usage:
📦 Enter the folders you want to back up (one per line).  
🛑 Type 'fin' to finish.  
Path: /etc  
Path: /home/usuario01/Documents  
Path: fin  
✅ Backup created: /backups/backup_2025-07-02_21-10.tar.gz


- ✅ Displays the final size of the generated .tar.gz file
- ⚠️ If backing up protected folders like /etc, run with elevated permissions

🧠 Day 10 Learnings
- Dynamic input via console (read)
- Validating folder existence
- Handling arrays in Bash
- Informative messages and clean exit if no valid input
---
📂 Project Structure
├── backup.sh
├── .gitignore
├── LICENSE
└── README.md

---

📄 License
This project is licensed under the MIT License.
---
👩‍💻 Author
Camila
Backup Automation in Bash – Day 10 🚀


🧹 Log Cleaner Automator — Bash Script (Day 11)
# 🧹 Log Cleaner Automator — Bash Script (Day 11)

Script interactivo en Bash para limpiar archivos `.log` de forma inteligente. Permite detectar archivos grandes o antiguos, y aplicar acciones como eliminar, comprimir o mover a una carpeta de respaldo. Ideal para tareas de mantenimiento en sistemas Linux.

---

## ⚙️ Requisitos

- Sistema operativo Linux  
- Bash instalado  
- Permisos de lectura en la carpeta objetivo  
- Permisos de escritura en `/backups/logs`

---

## 🚀 Cómo usar

1. Dar permisos de ejecución:

```bash
chmod +x log_cleaner.sh


- Ejecutar el script:
./log_cleaner.sh


- Ingresar la ruta de la carpeta a limpiar (ej: /var/log)
- Elegir acción por cada archivo .log detectado:
- 🔴 Eliminar
- 🟡 Comprimir (gzip)
- 🔵 Mover a /backups/logs
- ⚪ Omitir
🧪 Ejemplo de ejecución📂 Ingresá la ruta de la carpeta a limpiar (ej: /var/log): /var/log
📄 /var/log/syslog — Tamaño: 12M — Última modificación: 2025-07-11 09:30:00
¿Qué acción querés aplicar?
1) Eliminar
2) Comprimir
3) Mover a /backups/logs
4) Omitir
Cada acción queda registrada en registro_limpieza.log con fecha y tipo de operación.🧠 Aprendizajes técnicos- Uso de find, du, stat, gzip, rm, mv
- Validación de rutas y archivos
- Interacción con select y read
- Registro técnico en archivo .log
- Automatización de mantenimiento
📂 Estructura del proyectorespaldo-cami/
├── backup.sh
├── log_cleaner.sh
├── registro_limpieza.log
├── LICENSE
└── README.md
📄 LicenciaMIT License👩‍💻 AutoraCamila — Automatización técnica en Bash, Día 11 🚀
---

🧹 Log Cleaner Automator — Bash Script (Day 11)
# 🧹 Log Cleaner Automator — Bash Script (Day 11)

Interactive Bash script for smart cleanup of `.log` files. It detects large or outdated logs in a specified folder and allows the user to delete, compress, or move them to a backup directory. Perfect for maintenance tasks in Linux environments.

---

## ⚙️ Requirements

- Linux-based operating system  
- Bash installed  
- Read permissions on the target folder  
- Write permissions in `/backups/logs`

---

## 🚀 How to use

1. Give execution permissions:

```bash
chmod +x log_cleaner.sh


- Run the script:
./log_cleaner.sh


- Enter the folder path to clean (e.g. /var/log)
- Choose an action for each .log file detected:
- 🔴 Delete
- 🟡 Compress (gzip)
- 🔵 Move to /backups/logs
- ⚪ Skip
🧪 Example usage📂 Enter folder to clean (e.g. /var/log): /var/log
📄 /var/log/syslog — Size: 12M — Last modified: 2025-07-11 09:30:00
What action do you want to apply?
1) Delete
2) Compress
3) Move to /backups/logs
4) Skip
Each action is logged in registro_limpieza.log with timestamp and type.🧠 Technical learnings- Use of find, du, stat, gzip, rm, mv
- Path and file validation
- Interaction with select and read
- Technical logging in .log file
- Maintenance automation in Bash
📂 Project structurerespaldo-cami/
├── backup.sh
├── log_cleaner.sh
├── registro_limpieza.log
├── LICENSE
└── README.md
📄 LicenseMIT License👩‍💻 AuthorCamila — Technical Automation in Bash, Day 11 🚀
---

# 🖥️ SysMonitor — Bash Script (Day 12)

Script técnico en Bash que genera un reporte del estado actual del sistema. Muestra información sobre CPU, memoria RAM, espacio en disco y uptime. El reporte se guarda automáticamente en `/backups/reportes` con fecha incluida.

---

## ⚙️ Requisitos

- Sistema operativo Linux  
- Bash instalado  
- Permisos de lectura en el sistema  
- Permisos de escritura en `/backups/reportes`

---

## 🚀 Cómo usar

1. Dar permisos de ejecución:

```bash
chmod +x sys_monitor.sh

- Ejecutar el script:
./sys_monitor.sh


- El reporte se guarda automáticamente en:
```/backups/reportes/sistema_dd-mm-aaaa.txt
```
🧪 Ejemplo de ejecución
🧠 Fecha del reporte: 2025-07-12 10:45:00
🔋 Uptime del sistema:
  10:45:00 up 3 days,  2:17,  2 users,  load average: 0.15, 0.10, 0.05

💾 Uso de memoria:
              total        used        free      shared  buff/cache   available
Mem:           7.7G        2.1G        3.8G        150M        1.8G        5.2G

💽 Espacio en disco:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   20G   28G  42% /

📈 Estado del CPU:
top - 10:45:00 up 3 days,  2:17,  2 users,  load average: 0.15, 0.10, 0.05
Tasks: 150 total,   1 running, 149 sleeping,   0 stopped,   0 zombie
%Cpu(s):  5.0 us,  2.0 sy,  0.0 ni, 92.0 id,  1.0 wa,  0.0 hi,  0.0 si,  0.0 st



🧠 Aprendizajes técnicos
- Uso de uptime, free, df, top, date
- Redirección de salida con tee
- Creación automática de carpetas
- Formato de fecha en Bash
- Registro técnico en archivos .txt

📂 Estructura del proyecto
respaldo-cami/
├── sys_monitor.sh
├── backups/reportes/
├── sistema_12-07-2025.txt
├── LICENSE
└── README.md



📄 Licencia
MIT License

👩‍💻 Autora
Camila — Diagnóstico técnico en Bash, Día 12 
---


🖥️ SysMonitor — Bash Script (Day 12)
# 🖥️ SysMonitor — Bash Script (Day 12)

Technical Bash script that generates a system status report. Displays information about CPU usage, RAM memory, disk space, and uptime. The report is automatically saved in `/backups/reportes` with a timestamp.

---

## ⚙️ Requirements

- Linux-based operating system  
- Bash installed  
- Read permissions on the system  
- Write permissions in `/backups/reportes`

---

## 🚀 How to use

1. Give execution permission:

```bash
chmod +x sys_monitor.sh


- Run the script:
./sys_monitor.sh


- The report will be automatically saved in:
/backups/reportes/sistema_dd-mm-yyyy.txt



🧪 Example output
🧠 Report date: 2025-07-12 10:45:00
🔋 System uptime:
  10:45:00 up 3 days, 2:17, 2 users, load average: 0.15, 0.10, 0.05

💾 Memory usage:
              total        used        free      shared  buff/cache   available
Mem:           7.7G        2.1G        3.8G        150M        1.8G        5.2G

💽 Disk space:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   20G   28G  42% /

📈 CPU status:
top - 10:45:00 up 3 days, 2:17, 2 users, load average: 0.15, 0.10, 0.05
Tasks: 150 total, 1 running, 149 sleeping, 0 stopped, 0 zombie
%Cpu(s): 5.0 us, 2.0 sy, 0.0 ni, 92.0 id, 1.0 wa, 0.0 hi, 0.0 si, 0.0 st



🧠 Technical learnings
- Commands used: uptime, free, df, top, date
- Output redirection with tee
- Automatic folder creation
- Date formatting in Bash
- Technical logging to .txt files

📂 Project structure
respaldo-cami/
├── sys_monitor.sh
├── backups/reportes/
├── sistema_12-07-2025.txt
├── LICENSE
└── README.md



📄 License
MIT License

👩‍💻 Author
Camila — System diagnostics with Bash, Day 12 🚀
---
# 🔐 PermCheck — Auditor de permisos en Bash (Día 13)

Script interactivo que permite auditar los permisos de archivos dentro de una carpeta específica. Detecta configuraciones inseguras (como permisos `777` o escritura para otros usuarios) y genera un reporte técnico con fecha. Ideal para tareas de mantenimiento y seguridad en entornos Linux.

---

## ⚙️ Requisitos

- Sistema operativo Linux  
- Bash instalado  
- Permisos de lectura en la carpeta objetivo  
- Permisos de escritura en `/backups/reportes`

---

## 🚀 Cómo usar

1. Dar permisos de ejecución al script:

```bash
chmod +x permission_audit.sh

- Ejecutar el script:
./permission_audit.sh


- Ingresar la ruta de la carpeta que querés auditar
- El reporte se guarda automáticamente en:
/backups/reportes/permisos_dd-mm-yyyy.txt
🧪 Ejemplo de ejecución📂 Ingresá la ruta de la carpeta a auditar: /home/usuario01/scripts
🔎 Auditoría de permisos en: /home/usuario01/scripts
🕒 Fecha: 2025-07-13 16:35:00
-----------------------------------------
⚠️ /home/usuario01/scripts/install.sh — Permisos: 777 [Inseguro]
⚠️ /home/usuario01/scripts/debug.log — Permisos: 757 [Inseguro]
✅ Auditoría completada. Resultado en: /backups/reportes/permisos_13-07-2025.txt
🧠 Aprendizajes técnicos- Uso de stat, find, basename, read, tee
- Validación de permisos peligrosos (777, escritura para otros)
- Registro técnico automatizado
- Interacción por consola con control de errores
- Automatización simple para ciberseguridad en Bash
📂 Estructura del proyectorespaldo-cami/
├── permission_audit.sh
├── backups/reportes/
├── permisos_13-07-2025.txt
├── LICENSE
└── README.md
📄 LicenciaMIT License👩‍💻 AutoraCamila — Auditoría técnica y seguridad en Bash, Día 13 🚀
---
🔐 README — PermCheck (Day 13)
# 🔐 PermCheck — File Permission Auditor in Bash (Day 13)

Interactive Bash script to audit file permissions inside a specified folder. It detects insecure configurations (like `777` or global write access) and generates a timestamped report. Ideal for security and maintenance tasks in Linux environments.

---

## ⚙️ Requirements

- Linux-based operating system  
- Bash installed  
- Read access on the target folder  
- Write access in `/backups/reportes`

---

## 🚀 How to use

1. Grant execution permission:

```bash
chmod +x permission_audit.sh

- Run the script:
./permission_audit.sh


- Enter the folder path to be audited
- The report will be automatically saved in:
/backups/reportes/permisos_dd-mm-yyyy.txt
🧪 Example output📂 Enter the folder path to audit: /home/usuario01/scripts
🔎 Auditing permissions in: /home/usuario01/scripts
🕒 Date: 2025-07-13 16:35:00
-----------------------------------------
⚠️ /home/usuario01/scripts/install.sh — Permissions: 777 [Insecure]
⚠️ /home/usuario01/scripts/debug.log — Permissions: 757 [Insecure]
✅ Audit completed. Report saved at: /backups/reportes/permisos_13-07-2025.txt
🧠 Technical learnings- Using stat, find, basename, read, tee
- Detecting risky permission setups (777, write access for others)
- Automated technical logging
- Error handling and terminal interaction
- Simple Bash-based security automation
📂 Project structurerespaldo-cami/
├── permission_audit.sh
├── backups/reportes/
├── permisos_13-07-2025.txt
├── LICENSE
└── README.md
📄 LicenseMIT License👩‍💻 AuthorCamila — Technical auditing and Bash security, Day 13 🚀
—
📘 README — Día 14: TaskPlanner (Automatizador de tareas con cron)
# 📅 TaskPlanner — Bash Script (Day 14)

Script interactivo en Bash para automatizar la programación de tareas técnicas usando `cron`. Permite seleccionar scripts previos (como backups, monitoreo o auditoría) y definir su frecuencia de ejecución sin memorizar la sintaxis de cron. Ideal para entornos DevOps y mantenimiento automatizado.

---

## ⚙️ Requisitos

- Sistema operativo Linux  
- Bash instalado  
- Scripts técnicos previos en la carpeta `respaldo-cami`  
- Acceso al sistema de `crontab`

---

## 🚀 Cómo usar

1. Dar permisos de ejecución:

```bash
chmod +x cron_automator.sh
```
- Ejecutar el script:
./cron_automator.sh


- Seleccionar el script a programar
- Elegir la frecuencia de ejecución
- Confirmar si se desea agregar la tarea al crontab
🧪 Ejemplo de ejecución📂 Scripts disponibles en respaldo-cami:
1) backup.sh
2) sys_monitor.sh
3) permission_audit.sh
👉 Selección: 2

📅 Elegí la frecuencia de ejecución:
1) Cada día a las 9:00
2) Cada hora
3) Cada 15 minutos
4) Cada lunes a las 08:30
👉 Opción: 1

📝 Línea cron generada:
0 9 * * * bash /home/usuario01/respaldo-cami/sys_monitor.sh
¿Deseás agregarla al crontab? (s/n): s
✅ Tarea programada con éxito.
🧠 Aprendizajes técnicos- Uso de select, read, case, crontab
- Construcción dinámica de líneas cron
- Validación de scripts y rutas
- Automatización de agendado técnico
- Interacción segura desde terminal
📂 Estructura del proyectorespaldo-cami/
├── cron_automator.sh
├── backups/reportes/
├── tareas_14-07-2025.txt
├── LICENSE
└── README.md
📄 LicenciaMIT License👩‍💻 AutoraCamila — Automatización de tareas técnicas en Bash, Día 14 🚀
—
---
📘 README — TaskPlanner (Day 14) in English
# 📅 TaskPlanner — Bash Script (Day 14)

Interactive Bash script to automate scheduling of technical tasks using `cron`. It allows users to select existing scripts (like backups, monitoring, or audits) and define their execution frequency without memorizing cron syntax. Ideal for DevOps environments and automated maintenance.

---

## ⚙️ Requirements

- Linux-based operating system  
- Bash installed  
- Existing technical scripts in the `respaldo-cami` folder  
- Access to the `crontab` system

---

## 🚀 How to use

1. Grant execution permission:

```bash
chmod +x cron_automator.sh

- Run the script:

- Select the script to schedule
- Choose the execution frequency
- Confirm whether to add the task to crontab
🧪 Example output📂 Available scripts in respaldo-cami:
1) backup.sh
2) sys_monitor.sh
3) permission_audit.sh
👉 Selection: 2

📅 Choose execution frequency:
1) Every day at 9:00
2) Every hour
3) Every 15 minutes
4) Every Monday at 08:30
👉 Option: 1

📝 Generated cron line:
0 9 * * * bash /home/usuario01/respaldo-cami/sys_monitor.sh
Add to crontab? (y/n): y
✅ Task successfully scheduled.

🧠 Technical learnings- Using select, read, case, crontab
- Dynamic cron line construction
- Script and path validation
- Safe terminal interaction
- Technical scheduling automation in Bash
📂 Project structurerespaldo-cami/
├── cron_automator.sh
├── backups/reportes/
├── tareas_14-07-2025.txt
├── LICENSE
└── README.md
📄 LicenseMIT License👩‍💻 AuthorCamila — Task automation in Bash, Day 14 🚀
---
📘 README — Día 15: LogInsight (Análisis de logs en Bash)
# 📊 LogInsight — Bash Script (Day 15)

Script interactivo en Bash para analizar archivos de log (.log/.txt). Detecta patrones técnicos como errores, advertencias, fallos y accesos, cuenta ocurrencias y genera un resumen técnico. Ideal para tareas de observabilidad, auditoría y mantenimiento automatizado.

---

## ⚙️ Requisitos

- Sistema operativo Linux  
- Bash instalado  
- Archivo de log accesible (.log o .txt)  
- Permiso de escritura en `/backups/reportes`

---

## 🚀 Cómo usar

1. Dar permisos de ejecución:

```bash
chmod +x log_analysis.sh


- Ejecutar el script:
./log_analysis.sh


- Ingresar la ruta del archivo de log
- El resumen se guardará automáticamente en:
/backups/reportes/logs_dd-mm-yyyy.txt
🧪 Ejemplo de ejecución📂 Ingresá la ruta del archivo de log (.log/.txt): ./prueba.log
📊 Análisis de logs — 2025-07-15 14:45:00
📄 Archivo analizado: ./prueba.log
-----------------------------------------
❌ Errores encontrados: 1
⚠️ Advertencias: 1
🚫 Fallos: 1
✅ Accesos: 1

✅ Resumen guardado en: /backups/reportes/logs_15-07-2025.txt
🧠 Aprendizajes técnicos- Uso de grep, wc, tee, date, read
- Detección de patrones técnicos (ERROR, WARNING, FAIL, ACCESS)
- Generación de reportes automatizados
- Validación de rutas y archivos
- Observabilidad básica en Bash
📂 Estructura del proyectorespaldo-cami/
├── log_analysis.sh
├── backups/reportes/
├── logs_15-07-2025.txt
├── LICENSE
└── README.md
📄 LicenciaMIT License👩‍💻 AutoraCamila — Observabilidad técnica y análisis de logs en Bash, Día 15 🚀
—

📊 LogInsight — Bash Script (Day 15)
Interactive Bash script to analyze .log or .txt files. It detects technical patterns such as errors, warnings, failures, and access events, counts their occurrences, and generates a summary report. Perfect for observability, auditing, and automated maintenance tasks.

⚙️ Requirements
- Linux-based operating system
- Bash installed
- Accessible log file (.log or .txt)
- Write permission in /backups/reportes

🚀 How to use
- Grant execution permission:
chmod +x log_analysis.sh


- Run the script:
./log_analysis.sh


- Enter the path to the log file
- The summary will be saved automatically in:
/backups/reportes/logs_dd-mm-yyyy.txt
🧪 Example output📂 Enter the path to the log file (.log/.txt): ./prueba.log
📊 Log analysis — 2025-07-15 14:45:00
📄 File analyzed: ./prueba.log
-----------------------------------------
❌ Errors found: 1
⚠️ Warnings: 1
🚫 Failures: 1
✅ Access events: 1

✅ Summary saved at: /backups/reportes/logs_15-07-2025.txt
🧠 Technical learnings- Using grep, wc, tee, date, read
- Pattern detection (ERROR, WARNING, FAIL, ACCESS)
- Automated report generation
- File and path validation
- Basic observability in Bash
📂 Project structurerespaldo-cami/
├── log_analysis.sh
├── backups/reportes/
├── logs_15-07-2025.txt
├── LICENSE
└── README.md
📄 LicenseMIT License👩‍💻 AuthorCamila — Technical log analysis in Bash, Day 15 🚀
