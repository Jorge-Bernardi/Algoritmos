Algoritmo "LOJA_DE_ROUPA"
//Algoritmo criado para simular uma loja de roupas, com estoque,
// vendas e recebimento de vendas.
// Feito por: Jorge e Victor Vendrameto
Var
   nome, telefone, forma_pgto: caracter
   opcao,qtd_calca, qtd_camiseta, qtd_bone, compra:inteiro
   preco, valor_venda, valor_final, valor_desconto:real
   item:vetor[1..3] de caracter
   qtd: vetor[1..3] de inteiro
   i: inteiro





Inicio
   //Quantidades de itens no Estoque

   //cal�a
   item[1] <- "Cal�a"
   qtd[1] <- 3

   //camiseta
   item[2] <- "Camiseta"
   qtd[2] <- 2

   //bon�
   item[3] <- "Bon�"
   qtd[3] <- 1
   //tela de in�cio



   Escreval("----------------------------")
   Escreval("Bem vindos � loja VituG !")
   Escreval("----------------------------")
   //menu de escolha
   Escreval("Escolha uma op��o:")
   Escreval(" 1 - Ver Estoque")
   Escreval(" 2 - Comprar")
   Escreval(" 3 - Vendas")
   Escreval(" 4 - Sair")
   Leia(opcao)
   Se (opcao < 1) ou (opcao > 4) Ent�o
      Escreval("Digite um Valor V�lido!")
   Fimse




   Escolha(opcao)
   CASO 1
      //disposi��o do estoque, leitura feita a partir de vetores
      Escreval("Estoque:")
      Para i de 1 at� 3 Fa�a
         Limpatela()
         Escreval("1 - ", item[1], " | Quantidade Dispon�vel: ", qtd[1])
         Escreval("2 - ", item[2], " | Quantidade Dispon�vel: ", qtd[2])
         Escreval("3 - ", item[3], " | Quantidade Dispon�vel: ", qtd[3])
         Escreval("")
      Fimpara






   CASO 2
      //simula��o de venda

      limpatela()

      // informa��es de contato solicitados no enunciado

      Escreval("Nos diga Seu Nome: ")
      Leia(nome)
      Escreval("Digite Seu Telefone De Contato:")
      Leia(telefone)

      // apresenta��o dos produtos

      Escreval("Na Nossa Loja Vendemos: Cal�a, Camisa e Bon�")
      Escreval("Qual Voc� Gostaria?")
      Escreval("")
      Escreval(" 1 - Cal�a / R$ 59,90 (Do P ao GG)")
      Escreval(" 2 - Camiseta / R$ 37,80 (Do PP ao XGG)")
      Escreval(" 3 - Bon� / R$ 20,00 (Nas cores Vermelho, Verde, Azul, Preto)")
      Escreval("------------------------------------------------------------")

      //Quantidade de Produtos que ser�o adquiridos

      Escreval("Qual A Quantidade de Cal�as?")
      Leia(qtd_calca)
      Se(qtd_calca < 0)Ent�o
         Escreval("Digite uma quantidade v�lida")
      Fimse
      Se (qtd_calca > qtd [1]) Ent�o
         Escreval("Infelizmente n�o temos essa quantidade no Estoque")
      Fimse



      Escreval("Qual a Quantidade de Camisetas?")
      Leia(qtd_camiseta)
      Se(qtd_camiseta < 0)Ent�o
         Escreval("Digite uma quantidade v�lida")
      Fimse
      Se (qtd_camiseta > qtd [2]) Ent�o
         Escreval("Infelizmente n�o temos essa quantidade no Estoque")
      Fimse



      Escreval("Qual a Quantidade de Bon�s?")
      Leia(qtd_bone)
      Se(qtd_bone < 0)Ent�o
         Escreval("Digite uma quantidade v�lida")
      Fimse
      Se (qtd_bone > qtd [3]) Ent�o
         Escreval("Infelizmente n�o temos essa quantidade no Estoque")
      Fimse


      //valor da venda
      valor_venda <- ((qtd_calca * 59.90) + (qtd_camiseta * 37.80) + (qtd_bone * 20))
      Escreval("Pre�o da Venda:", valor_venda)
      //formas de pagamento, com possibilidade de descontou ou n�o
      Escreval("Qual ser� a forma de pagamento? Aceitamos Cart�o, Pix e Dinheiro")
      Leia(forma_pgto)
      Se (forma_pgto = "dinheiro") Ent�o
         Escreval("No Dinheiro voc� ganha 10% de Desconto!")
         valor_desconto <- valor_venda * 0.10
         Escreval("Desconto: ", valor_desconto)
         valor_final <- valor_venda - valor_desconto
         Escreval("Pre�o da Venda: ", valor_final)
      Fimse

      compra <- qtd_calca + qtd_camiseta + qtd_bone

      //atualiza��o do estoque
      Para i de 1 at� 3 Fa�a
         qtd[1] <- qtd[1] - qtd_calca
         qtd[2] <- qtd[2] - qtd_camiseta
         qtd[3] <- qtd[3] - qtd_bone
      Fimpara

   CASO 3

      // Dados da venda feita
      Escreval("Mostrar Recebimento de Venda")
      Escreval("Itens Adquiridos: ", compra)
      Escreval("Valor Total da venda: ", valor_venda, valor_final )
      Escreval("Forma de Pagamento: ", forma_pgto)
      Escreval("Desconto:", valor_desconto)


      valor_venda <- ((qtd_calca * 59.90) + (qtd_camiseta * 37.80) + (qtd_bone * 20))
      compra <- qtd_calca + qtd_camiseta + qtd_bone
      valor_final <- valor_venda - valor_desconto
      valor_desconto <- valor_venda * 0.10

   CASO 4
      Escreval("Ok! Volte Sempre!")
   Fimescolha

Fimalgoritmo
//           Enunciado:
//            1) Considerem o desenvolvimento de um sistema para uma loja de roupas. No
//            sistema ser� poss�vel navegar atrav�s de um menu para:
//            a) Ver os itens e quantidades dispon�veis no estoque;
//            b) Realizar vendas dos itens dispon�veis no estoque;
//            c) Fazer o recebimento de uma venda;
//            d) Sair do sistema.
//            Para o correto desenvolvimento do sistema voc�s dever�o tomar como base que:
//            a) Os itens, pre�os e quantidades dispon�veis ser�o vetores e seus valores j�
//            estar�o predefinidos no sistema.
//            b) Para o registro da venda dever� ser informado o nome do cliente, telefone,
//            forma de pagamento. Os itens da venda feito dever�o ser armazenados em
//            um vetor.
//            c) Ao fazer o recebimento de uma venda, apresentar todos os dados da
//            venda e se o cliente for pagar em dinheiro, conceder desconto de 10%
//            sobre o valor total.
//            d) N�o dever�o ser aceitas quantidades negativas de produtos.
//            e) Comentem o c�digo fonte, explicando cada trecho e o porqu� da escolha
//            das estruturas no algoritmo.
