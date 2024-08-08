            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP 
            Quero fazer o login (autenticação) na plataforma   
            Para visualizar meus pedidos 

            Contexto:
            Dado que eu acesse a página de login

            Cenário: Autenticação válida
            Quando eu digitar o usuário "teste@gmail.com.br"
            E a senha "senha@123"
            Então deve direcionar a tela de checkout

            Esquema do Cenário: Usuário inválido
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Exemplos:
            | usuario            | senha       |
            | Lucasgp            | senha123    |
            | teste.qa@gmail.com | 12345       |
            | @teste             | senha       |
            | Guilherme@.br      | TesteQa123  |
            | João_gmail.com     | senha123    |
            | invalido@hotmail   | invalido123 |
            | Teste@@gmail.com   | senha123    |
            | teste.qa@gmail.com | SenhaErrada |