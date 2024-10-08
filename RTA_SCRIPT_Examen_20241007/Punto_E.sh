#!/bin/bash


grep "MemTotal" /proc/meminfo > $HOME/repogit/UTNFRA_SO_1P2C_2024_-Juarez-Pablo-/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt
dmidecode -t chassis | grep -i -e chassis -e manufacturer >> $HOME/repogit/UTNFRA_SO_1P2C_2024_-Juarez-Pablo-/RTA_ARCHIVOS_Examen_20241007/Filtro_Basico.txt





