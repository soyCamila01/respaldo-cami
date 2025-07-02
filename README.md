# 🗂️ Automatizador de Backups

Script en Bash que realiza copias comprimidas de una carpeta específica y las guarda en un directorio `/backups` con fecha y hora. Ideal para automatizar respaldos en sistemas Linux.

---

## ⚙️ Requisitos

- Sistema operativo Linux
- Bash instalado
- Permisos de escritura en el directorio de destino (`/backups`)

---

## 🚀 Uso

```bash
./backup.sh
```
---
El script:
- Comprime la carpeta objetivo
- Le agrega fecha y hora al nombre del archivo
- Guarda el backup en /backups

---
🧪 Ejemplo de ejecución

``` $ ./backup.sh
Backup creado: /backups/backup_2025-07-02_11-30.tar.gz
```
---
📂 Estructura del proyecto

Automatizador-Backups/
├── backup.sh
└── README.md

👩‍💻 Autor
Camila — Día 9 del proyecto de automatización en Bash 🚀

---


