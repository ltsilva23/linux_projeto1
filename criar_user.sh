#!/bin/bash

echo "Criando usuários do sistema...."

useradd guest10 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest -e

useradd guest11 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest -e

useradd guest12 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest -e

useradd guest13 -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd guest -e

echo "Finalizado!!"

