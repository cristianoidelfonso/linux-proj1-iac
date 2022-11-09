#!/bin/bash

echo "Criando diretórios..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e adicionando-os aos grupos..."

useradd carlos -c "Carlos Nascimento" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "Maria Fernanda" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c "João Henrique" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -c "Débora Magalhães" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd juliana -c "Juliana Barbosa" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd fabiana -c "Fabiana Mattos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd amanda -c "Amanda Feitoza" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd tais -c "Tais Cristina" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd ana -c "Ana Cristina" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Finalizado..."