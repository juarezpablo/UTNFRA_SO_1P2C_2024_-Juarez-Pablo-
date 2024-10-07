#!/bin/bash



grep "MemTotal" /proc/meminfo > Filtro_Basico.txt
dmidecode -t chassis | grep -i -e chassis -e manufacturer >> Filtro_Basico.txt





