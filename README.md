# 🗂️ Automatizador de Backups

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
👩‍💻 AutorCamila
Proyecto de Automatización de Backups en Bash — Día 10 🚀
---

