#!/bin/bash
contador=1
while [ $contador -le 3 ]; do
 sudo fdisk /dev/sdc << EOF
n

$contador

+1G

w
EOF
echo "Contador Particion: $contador"
 contador=$((contador + 1))
done

echo "Contador despues del while: $contador"

if [ $contador -eq 4 ]; then
        sudo fdisk /dev/sdc << EOF
n





w
EOF

contador=$((contador + 1))
fi

echo "Contador despues de la unid extendida: $contador"


while [[ $contador -ge 5 && $contador -le 11 ]]; do
 sudo fdisk /dev/sdc << EOF
n

+1G

w
EOF
echo "Contador Particion Extendida: $contador"
 contador=$((contador + 1))
done

sudo mkfs -t ext4 /dev/sdc1
sudo mkfs -t ext4 /dev/sdc2
sudo mkfs -t ext4 /dev/sdc3
sudo mount /dev/sdc1 /Examenes_UTN/alumno_1/parcial_1
sudo mount /dev/sdc2 /Examenes_UTN/alumno_1/parcial_2
sudo mount /dev/sdc3 /Examenes_UTN/alumno_1/parcial_3

sudo lsblk -f

cat /etc/fstab

echo "/dev/sdc1 /Examenes_UTN/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc2 /Examenes_UTN/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc3 /Examenes_UTN/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab


sudo mkfs -t ext4 /dev/sdc5
sudo mkfs -t ext4 /dev/sdc6
sudo mkfs -t ext4 /dev/sdc7
sudo mkfs -t ext4 /dev/sdc8
sudo mkfs -t ext4 /dev/sdc9
sudo mkfs -t ext4 /dev/sdc10
sudo mkfs -t ext4 /dev/sdc11



sudo mount /dev/sdc5 /Examenes_UTN/alumno_2/parcial_1
sudo mount /dev/sdc6 /Examenes_UTN/alumno_2/parcial_2
sudo mount /dev/sdc7 /Examenes_UTN/alumno_2/parcial_3
sudo mount /dev/sdc8 /Examenes_UTN/alumno_3/parcial_1
sudo mount /dev/sdc9 /Examenes_UTN/alumno_3/parcial_2
sudo mount /dev/sdc10 /Examenes_UTN/alumno_3/parcial_3
sudo mount /dev/sdc11 /Examenes_UTN/profesores


echo "/dev/sdc5 /Examenes_UTN/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc6 /Examenes_UTN/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc7 /Examenes_UTN/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc8 /Examenes_UTN/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc9 /Examenes_UTN/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc10 /Examenes_UTN/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc11 /Examenes_UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab

sudo lsblk -f

