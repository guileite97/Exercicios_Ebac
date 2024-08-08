#language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP 
Quero fazer concluir meu cadastro    
Para finalizar minha compra 


Contexto:
Dado que acesso a página de cadastro

Cenário: Campos obrigatórios
Quando preencher todos os campos obrigatórios
Então deve permitir seguir para a finalização da compra

Esquema do Cenário: E-mail com formato inválido
Quando preencher o <email> com formato inválido
Então deve exibir a mensagem "Formato de e-mail inválido"

Exemplos:
|email|
|andre@teste|
|Teste_gmail.com|
|Teste@hotmail,com|
|Teste.br@gmail.com|

Cenário: Cadastro com campos vazios
Quando clicar em Finalizar Comprar
E os campos de cadastro estiverem vazios
Então deve exibir a mensagem "Preencha os campos obrigatórios"