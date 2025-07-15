#!/bin/bash

# 🖥️ SysMonitor — Día 12

fecha=$(date '+%Y-%m-%d %H:%M:%S')
reporte="/backups/reportes/sistema_$(date '+%d-%m-%Y').txt"

mkdir -p /backups/reportes

echo "🧠 Fecha del reporte: $fecha" | tee "$reporte"
echo "🔋 Uptime del sistema:" | tee -a "$reporte"
uptime | tee -a "$reporte"

echo -e "\n💾 Uso de memoria:" | tee -a "$reporte"
free -h | tee -a "$reporte"

echo -e "\n💽 Espacio en disco:" | tee -a "$reporte"
df -h | tee -a "$reporte"

echo -e "\n📈 Estado del CPU:" | tee -a "$reporte"
top -b -n1 | head -n 5 | tee -a "$reporte"

echo -e "\n✅ Reporte guardado en: $reporte"

Esto crea un reporte técnico con:
- Fecha actual
- Uptime
- Uso de RAM y disco
- Resumen del CPU
- Todo guardado en /backups/reportes



