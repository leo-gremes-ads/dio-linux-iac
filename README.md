# DIO

## Desafio de Projeto

### Script de Criação de Estrutura de Usuários, Diretórios e Permissões

Neste projeto iremos criar um script onde toda a infraestrutura de usuários, grupos de usuários, diretórios e permissões serão criadas automaticamente. Será realizado o upload do arquivo de script no GitHub para futuras reutilizações do script. Sendo assim, toda nova máquina virtual que for iniciada já estará pronta para uso quando o script for executado.

![image](https://github.com/user-attachments/assets/522a06d9-25e7-4a3a-9329-8cefbb8db87b)


### Solução

Para atender ao desafio o script foi dividido em 3 etapas: A primeira cria os grupos; a segunda cria os diretórios e em seguida faz as alterações de dono e de permissões; e a terceira cria os usuários com uma senha padrão que deverá ser trocada no primeiro acesso (definido no comando <i>passwd -e</i>). Também coloquei um script que desfaz todas as alterações.
