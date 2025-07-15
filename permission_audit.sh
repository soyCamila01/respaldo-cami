#!/bin/bash

# 🔐 PermCheck — Auditor de permisos (Día 13)

fecha=$(date '+%d-%m-%Y')
reporte="/backups/reportes/permisos_$fecha.txt"

mkdir -p /backups/reportes

read -p "📂 Ingresá la ruta de la carpeta a auditar: " ruta

if [ ! -d "$ruta" ]; then
  echo "❌ Ruta inválida. Abortando."
  exit 1
fi

echo "🔎 Auditoría de permisos en: $ruta" | tee "$reporte"
echo "🕒 Fecha: $(date '+%Y-%m-%d %H:%M:%S')" | tee -a "$reporte"
echo "-----------------------------------------" | tee -a "$reporte"

# Buscar archivos con permisos inseguros
find "$ruta" -type f | while read archivo; do
  permisos=$(stat -c %a "$archivo")
  nombre=$(basename "$archivo")

  if [[ "$permisos" == "777" || "$permisos" == *"7" ]]; then
    echo "⚠️ $archivo — Permisos: $permisos [Inseguro]" | tee -a "$reporte"
  fi
done

echo "✅ Auditoría completada. Resultado en: $reporte"
