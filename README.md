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
