#!/bin/bash

ORIGEN="$HOME/documentos_importantes"
DESTINO="/backups"
FECHA=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVO="respaldo_$FECHA.tar.gz"

if [ -d "$ORIGEN" ]; then
    tar -czf "$DESTINO/$ARCHIVO" "$ORIGEN" && \
    echo "[✓] Backup creado en $DESTINO/$ARCHIVO" || \
    echo "[✗] Error al crear backup"
else
    echo "[!] Carpeta origen no encontrada: $ORIGEN"
    exit 1
fi
echo "📏 Tamaño del archivo: $(du -h "$backup_dir/$archivo" | cut -f1)"
