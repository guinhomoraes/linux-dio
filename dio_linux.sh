#!/bin/bash

echo "Diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Group"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Users Group"

useradd carlos -m -s /bin/bash -p $(opernssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(opernssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(opernssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(opernssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiao -m -s /bin/bash -p $(opernssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(opernssl passwd -crypt Senha123) -G GRP_VEN


useradd josefina -m -s /bin/bash -p $(opernssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(opernssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(opernssl passwd -crypt Senha123) -G GRP_SEC

echo "Diretorios permissions"

shown root:GRP_ADM /adm
shown root:GRP_ven /ven
shown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Acabou"



