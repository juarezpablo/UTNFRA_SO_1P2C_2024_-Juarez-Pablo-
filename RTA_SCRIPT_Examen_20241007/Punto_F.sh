#!/bin/bash



texto1="Mi ip es: "
echo $texto1
curl -s ifconfig.me | grep 1

echo "mi usuario es:"
whoami
