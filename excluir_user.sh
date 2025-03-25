#!/bin/bash
# Autora: Larissa Thalia
# Data: 24/03/2025

# Lista de usuários essenciais que NÃO devem ser excluídos
usuarios_essenciais=("root" "thalia" "daemon" "bin" "sys" "sync" "games" "man" "lp" "mail" "news" "uucp" "proxy" "www-data" "backup" "list" "irc" "gnats" "nobody")

# Obter todos os usuários do sistema (com UID >= 1000)
usuarios=$(awk -F: '$3 >= 1000 {print $1}' /etc/passwd)

# Excluir usuários que não estão na lista essencial
for user in $usuarios; do
    if [[ ! " ${usuarios_essenciais[@]} " =~ " ${user} " ]]; then
        echo "Excluindo usuário: $user"
        sudo userdel -r $user
    else
        echo "Mantendo usuário essencial: $user"
    fi
done

echo "Processo concluído."
