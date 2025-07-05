#!/bin/bash

backup_dir="/backups"
mkdir -p "$backup_dir"
while true; do
    echo ""
    echo "🗂️  Menú del Backup"
    echo "1. Crear un backup nuevo"
    echo "2. Ver backups existentes"
    echo "3. Ver espacio usado por backups"
    echo "4. Salir"
    read -p "Elegí una opción [1-4]: " opcion

    case $opcion in
        1)
            echo "🔄 Ejecutando script de backup..."
            ./backup.sh
            ;;
        2)
            echo "📁 Archivos de backup existentes:"
            ls -lh "$backup_dir"
            ;;
        3)
            echo "📊 Tamaño total ocupado en $backup_dir:"
            du -sh "$backup_dir"
            ;;
        4)
            echo "👋 ¡Hasta luego!"
            break
            ;;
        *)
            echo "⚠️  Opción inválida. Probá con 1, 2, 3 o 4."
            ;;
    esac
done

