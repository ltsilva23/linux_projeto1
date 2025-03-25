# Scripts de Gestão de Usuários e Configurações do Sistema

Este repositório contém diversos scripts desenvolvidos em bash como parte do curso e para prática de habilidades em automação e administração de sistemas Linux.

## Conteúdo

### 1. `criar_user.sh`
- **Descrição**: Automação para criação de múltiplos usuários convidados no sistema.
- **Detalhes**:
  - Configura usuários com shell interativo `/bin/bash`.
  - Define senhas utilizando hash (`openssl`).
  - Força a alteração de senha no próximo login.
- **Usuários Criados**: 
  - `guest10`, `guest11`, `guest12`, `guest13`.

> **Observação**: Antes de executar o script, os nomes dos usuários podem ser ajustados de acordo com sua necessidade. Modifique os nomes diretamente no arquivo se quiser criar outros usuários.

### 2. `date.sh`
- **Descrição**: Um script simples que exibe a data atual do sistema.
- **Uso**:
  - Executa o comando `date` para mostrar a data.

### 3. `excluir_user.sh`
- **Descrição**: Script desenvolvido de forma independente para exercício e prática.
- **Finalidade**:
  - Identifica usuários com UID >= 1000.
  - Exclui usuários que não constam na lista de "usuários essenciais".
  - Preserva os usuários críticos especificados em uma lista interna.

> **Observação**: A lista de "usuários essenciais" pode ser ajustada no próprio script conforme necessário. Certifique-se de incluir todos os usuários que não devem ser excluídos antes de executar.

## Como Usar

1. Execute o script utilizando o terminal:
    ```bash
    ./nome_do_script.sh

2. Privilégios Requiridos:

    - Execute com **sudo** para funções que alteram usuários.

# Notas Importantes

- **Cuidado**: O script **excluir_user.sh**  realiza exclusão de usuários. Certifique-se de revisar a lista de "usuários essenciais" antes de executá-lo.
- **Compatibilidade**: Testado em distribuições Linux padrão.
