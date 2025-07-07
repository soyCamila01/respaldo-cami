#!/bin/bash
tput setaf 4
echo "🔧 RESPALDO AUTOMÁTICO — SISTEMA DE BACKUP"
tput sgr0

echo ""
echo ""
echo "Seleccione una opción:"
echo "1️⃣  Respaldar documentos importantes"
echo "2️⃣  Ingresar rutas personalizadas"
echo "3️⃣  Ver historial completo"
echo "4️⃣  Filtrar respaldos por fecha"
echo "5️⃣  Filtrar respaldos por ruta"
echo "0️⃣  Salir"
echo ""
read -p "👉 Opción seleccionada: " opcion
case $opcion in
    1)
        ORIGEN="$HOME/documentos_importantes"
        ;;
    2)
        read -p "🖊️ Ingresá las rutas separadas por espacios: " -a rutas
        ORIGEN="${rutas[@]}"
        ;;
    3)
        tput setaf 6
        echo ""
        echo "📘 Historial completo:"
        echo ""
        cat log_backups.txt
        tput sgr0
        echo ""
        exit 0
        ;;
    4)
        read -p "🗓️ Ingresá la fecha (YYYY-MM-DD): " fecha
        tput setaf 6
        echo ""
        echo "📅 Respaldos del $fecha:"
        echo ""
        grep "$fecha" log_backups.txt
        tput sgr0
        echo ""
        exit 0
        ;;
    5)
        read -p "📁 Ingresá una ruta a buscar: " ruta
        tput setaf 6
        echo ""
        echo "🔎 Respaldos que contienen: $ruta"
        echo ""
        grep "$ruta" log_backups.txt
        tput sgr0
        echo ""
        exit 0
        ;;
    0)
        echo "👋 Saliendo del script..."
        exit 0
        ;;
    *)
        echo "❌ Opción inválida. Ejecutá nuevamente."
        exit 1
        ;;
esac

DESTINO="/backups"
mkdir -p "$DESTINO"

FECHA=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVO="respaldo_$FECHA.tar.gz"
ARCHIVO_COMPLETO="$DESTINO/$ARCHIVO"

if [ -d "$ORIGEN" ] || [ -n "$ORIGEN" ]; then
    tar -czf "$ARCHIVO_COMPLETO" $ORIGEN && \
    {
        tput setaf 2
        echo "[✓] Backup creado en $ARCHIVO_COMPLETO"
        tput sgr0
    } || {
        tput setaf 1
        echo "[✗] Error al crear backup"
        tput sgr0
        exit 1
    }
else
    tput setaf 3
    echo "[!] Carpeta origen no encontrada: $ORIGEN"
    tput sgr0
    exit 1
fi

echo ""
tput setaf 6
echo "📏 Tamaño del archivo: $(du -h "$ARCHIVO_COMPLETO" | cut -f1)"
tput sgr0

log_file="log_backups.txt"
touch "$log_file"

echo ""
tput setaf 6
echo "📝 Registrando en el log..."
tput sgr0

respaldo_num=$(grep -c "──────────────────────────────────────────────" "$log_file")
numero_respaldo=$((respaldo_num + 1))

{
    echo "──────────────────────────────────────────────"
    echo "🔄 Número de respaldo: $numero_respaldo"
    echo "🕒 Fecha: $(date '+%Y-%m-%d %H:%M:%S')"
    echo "📁 Rutas respaldadas: $ORIGEN"
    echo "📦 Archivo generado: $ARCHIVO_COMPLETO"
    echo "📏 Tamaño final: $(du -sh "$ARCHIVO_COMPLETO" | cut -f1)"
    echo "🔐 Verificado y registrado por: Cami"
    echo "──────────────────────────────────────────────"
    echo ""
} >> "$log_file"

tput setaf 2
echo "✅ Registro guardado en: $log_file"
tput sgr0

tput setaf 4
echo "🔄 Número de respaldo generado: $numero_respaldo"
tput sgr0
