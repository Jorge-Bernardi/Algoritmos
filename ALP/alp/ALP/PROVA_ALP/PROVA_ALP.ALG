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
    
   //calça
   item[1] <- "Calça"
   qtd[1] <- 3

   //camiseta
   item[2] <- "Camiseta"
   qtd[2] <- 2

   //boné
   item[3] <- "Boné"
   qtd[3] <- 1
   //tela de início
   


   Escreval("----------------------------")
   Escreval("Bem vindos à loja VituG !")
   Escreval("----------------------------")
   //menu de escolha
   Escreval("Escolha uma opção:")
   Escreval(" 1 - Ver Estoque")
   Escreval(" 2 - Comprar")
   Escreval(" 3 - Vendas")
   Escreval(" 4 - Sair")
   Leia(opcao)
   Se (opcao < 1) ou (opcao > 4) Então
    Escreval("Digite um Valor Válido!")
   Fimse




   Escolha(opcao)
   CASO 1
          //disposição do estoque, leitura feita a partir de vetores
      Escreval("Estoque:")
       Para i de 1 até 3 Faça
      Limpatela()
      Escreval("1 - ", item[1], " | Quantidade Disponível: ", qtd[1])
      Escreval("2 - ", item[2], " | Quantidade Disponível: ", qtd[2])
      Escreval("3 - ", item[3], " | Quantidade Disponível: ", qtd[3])
      Escreval("")
      Fimpara






   CASO 2
          //simulação de venda
          
   limpatela()
   
          // informações de contato solicitados no enunciado
          
      Escreval("Nos diga Seu Nome: ")
      Leia(nome)
      Escreval("Digite Seu Telefone De Contato:")
      Leia(telefone)
      
          // apresentação dos produtos
          
      Escreval("Na Nossa Loja Vendemos: Calça, Camisa e Boné")
      Escreval("Qual Você Gostaria?")
      Escreval("")
      Escreval(" 1 - Calça / R$ 59,90 (Do P ao GG)")
      Escreval(" 2 - Camiseta / R$ 37,80 (Do PP ao XGG)")
      Escreval(" 3 - Boné / R$ 20,00 (Nas cores Vermelho, Verde, Azul, Preto)")
      Escreval("------------------------------------------------------------")
      
          //Quantidade de Produtos que serão adquiridos

      Escreval("Qual A Quantidade de Calças?")
      Leia(qtd_calca)
         Se(qtd_calca < 0)Então
            Escreval("Digite uma quantidade válida")
         Fimse
         Se (qtd_calca > qtd [1]) Então
         Escreval("Infelizmente não temos essa quantidade no Estoque")
         Fimse



      Escreval("Qual a Quantidade de Camisetas?")
      Leia(qtd_camiseta)
      Se(qtd_camiseta < 0)Então
            Escreval("Digite uma quantidade válida")
         Fimse
         Se (qtd_camiseta > qtd [2]) Então
         Escreval("Infelizmente não temos essa quantidade no Estoque")
         Fimse



      Escreval("Qual a Quantidade de Bonés?")
      Leia(qtd_bone)
      Se(qtd_bone < 0)Então
            Escreval("Digite uma quantidade válida")
         Fimse
         Se (qtd_bone > qtd [3]) Então
         Escreval("Infelizmente não temos essa quantidade no Estoque")
         Fimse

         
            //valor da venda
      valor_venda <- ((qtd_calca * 59.90) + (qtd_camiseta * 37.80) + (qtd_bone * 20))
      Escreval("Preço da Venda:", valor_venda)
          //formas de pagamento, com possibilidade de descontou ou não
      Escreval("Qual será a forma de pagamento? Aceitamos Cartão, Pix e Dinheiro")
      Leia(forma_pgto)
                      Se (forma_pgto = "dinheiro") Então
                          Escreval("No Dinheiro você ganha 10% de Desconto!")
                          valor_desconto <- valor_venda * 0.10
                          Escreval("Desconto: ", valor_desconto)
                          valor_final <- valor_venda - valor_desconto
                          Escreval("Preço da Venda: ", valor_final)
                      Fimse

         compra <- qtd_calca + qtd_camiseta + qtd_bone

       //atualização do estoque
      Para i de 1 até 3 Faça
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
//            sistema será possível navegar através de um menu para:
//            a) Ver os itens e quantidades disponíveis no estoque;
//            b) Realizar vendas dos itens disponíveis no estoque;
//            c) Fazer o recebimento de uma venda;
//            d) Sair do sistema.
//            Para o correto desenvolvimento do sistema vocês deverão tomar como base que:
//            a) Os itens, preços e quantidades disponíveis serão vetores e seus valores já
//            estarão predefinidos no sistema.
//            b) Para o registro da venda deverá ser informado o nome do cliente, telefone,
//            forma de pagamento. Os itens da venda feito deverão ser armazenados em
//            um vetor.
//            c) Ao fazer o recebimento de uma venda, apresentar todos os dados da
//            venda e se o cliente for pagar em dinheiro, conceder desconto de 10%
//            sobre o valor total.
//            d) Não deverão ser aceitas quantidades negativas de produtos.
//            e) Comentem o código fonte, explicando cada trecho e o porquê da escolha
//            das estruturas no algoritmo.
