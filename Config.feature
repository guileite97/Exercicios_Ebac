            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de produto

            Cenário: Seleção de cor
            Quando selecionar a cor do produto
            Então deve apresentar uma imagem do produto na cor selecionada

            Cenário: Seleção de tamanho
            Quando selecionar o tamanho do produto
            Então deve alterar a cor do icone de tamanha selecionado

            Cenário: Aumento na quantidade de itens
            Quando aumentar a quantidade de itens do produto
            Então deve aumentar o contador de itens do produto

            Cenário: Diminuição na quantidade de itens
            Quando diminuir a quantidade de itens do produto
            Então deve diminuir o contador de itens do produto

            Esquema do Cenário: Habilitar botão de compra
            Quando selecionar <cor> e <tamanho> e <quantidade>
            Então deve habilitar o botão Comprar

            Exemplos:
            | cor    | tamanho | quantidade |
            | Blue   | M       | 2          |
            | Blue   | P       | 1          |
            | Orange | L       | 8          |
            | Red    | XL      | 3          |
            | Orange | XS      | 9          |
            | Red    | XL      | 5          |

            Cenário: Limite de 10 produtos por venda
            Quando selecionar mais de 10 produtos
            Então deve exibir mensagem "Limite de 10 produtos por compra"

            Cenário: Funcionalidade do botão limpar
            Quando selecionar o botão limpar
            Então deve voltar a página ao estado original
