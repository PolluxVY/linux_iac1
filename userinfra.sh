#!/bin/bash

echo "Criando Diretorios..."

mkdir /home/publico

mkdir /home/adm

mkdir /home/ven

mkdir /home/sec

echo "Criando Grupos..."

groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC

echo "Criando Usuarios..."

useradd carlos -m  -c "usuario do grupo adm" -s /bin/bash -G GRP_ADM
passwd carlos -e

useradd maria  -m  -c "usuario do grupo adm" -s /bin/bash -G GRP_ADM
passwd maria -e

useradd joao   -m  -c "usuario do grupo adm" -s /bin/bash -G GRP_ADM
passwd joao -e

useradd debora -m -c  "usuario do grupo ven" -s /bin/bash -G GRP_VEN
passwd debora -e

useradd sebastiana -m -c "usuario do grupo ven" -s /bin/bash -G GRP_VEN
passwd sebastiana -e

useradd roberto -m -c "usuario do grupo ven"  -s /bin/bash -G GRP_VEN
passwd roberto -e

useradd josefina -m -c "usuario do grupo sec" -s /bin/bash -G GRP_SEC
passwd josefina -e

useradd amanda -m -c "usuario do grupo sec" -s /bin/bash -G GRP_SEC
passwd amanda -e

useradd rogerio -m -c "usuario do grupo sec" -s /bin/bash -G GRP_SEC
passwd rogerio -e

echo "Alterando permissões nos diretorios..."

chmod 777 /home/publico
chmod 770 /home/adm
chmod 770 /home/ven
chmod 770 /home/sec

echo "Finalizando Script..."

