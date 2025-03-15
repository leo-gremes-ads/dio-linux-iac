#!/bin/bash

# Criando grupos
echo Criando Grupos ...
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criando diretórios e arrumando permissoes
echo Criando diretorios ...
mkdir /publico
chmod 777 /publico
mkdir /adm
chown root:GRP_ADM /adm
chmod 770 /adm
mkdir /ven
chown root:GRP_VEN /ven
chmod 770 /ven
mkdir /sec
chown root:GRP_SEC /sec
chmod 770 /sec

# Criando usuários
echo Criando usuários ...
useradd carlos -m -s /bin/bash -G GRP_ADM -c "Carlos" -p "$(openssl passwd Senha123)"
passwd carlos -e
useradd maria -m -s /bin/bash -G GRP_ADM -c "Maria" -p "$(openssl passwd Senha123)"
passwd maria -e
useradd joao -m -s /bin/bash -G GRP_ADM -c "João" -p "$(openssl passwd Senha123)"
passwd joao -e
useradd debora -m -s /bin/bash -G GRP_VEN -c "Débora" -p "$(openssl passwd Senha123)"
passwd debora -e
useradd sebastiana -m -s /bin/bash -G GRP_VEN -c "Sebastiana" -p "$(openssl passwd Senha123)"
passwd sebastiana -e
useradd roberto -m -s /bin/bash -G GRP_VEN -c "Roberto" -p "$(openssl passwd Senha123)"
passwd roberto -e
useradd josefina -m -s /bin/bash -G GRP_SEC -c "Josefina" -p "$(openssl passwd Senha123)"
passwd josefina -e
useradd amanda -m -s /bin/bash -G GRP_SEC -c "Amanda" -p "$(openssl passwd Senha123)"
passwd amanda -e
useradd rogerio -m -s /bin/bash -G GRP_SEC -c "Rogério" -p "$(openssl passwd Senha123)"
passwd rogerio -e

echo Finalizado!
