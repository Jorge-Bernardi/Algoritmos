Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 19/04/2024
Var
// Seção de Declarações das variáveis 
opcao, pagamento: inteiro

item: vetor[1..3] de caracter
qtd: vetor[1..3] de inteiro
i: inteiro
val_calca: real
val_camisa: real
val_bone: real

sim_nao: caracter

qtd_calca: inteiro
qtd_camisa: inteiro
qtd_bone: inteiro

Inicio

//Calça
item[1] <- "Calça"
qtd[1] <- 3
val_calca <- 40
//Camisa
item[2] <- "Camisa"
qtd[2] <- 1
val_camisa <- 20
//Boné
item[3] <- "Boné"
qtd[3] <- 2
val_bone <- 15

escreval("1 - Ver estoque")
escreval("2 - Vender")
escreval("3 - Recebimento")
escreval("4 - Sair")
leia (opcao)

escolha (opcao)

//Faz com que entre na tela de estoque
   caso 1
   limpatela
   escreval("Estoque")
                      escreval("1 -", item[1], " | Quantidade disponível:", qtd[1], " | Valor unitário: R$", val_calca)
                      escreval("2 -", item[2], " | Quantidade disponível:", qtd[2], " | Valor unitário: R$", val_camisa)
                      escreval("3 -", item[3], " | Quantidade disponível:", qtd[3], " | Valor unitário: R$", val_bone)
                      escreval("")
                      escreval("Deseja retornar ao menu? S/N")
                      
   caso 2  //Faz com que entre na tela de vendas
   limpatela
   escreval("Vender Produtos")

                     Para i de 1 até 3 faca
                      escreva("Digite a quantidade de calças: ")
                      leia (qtd_calca)
                      escreval("")
                      escreva("Digite a quantidade de camisas: ")
                      leia (qtd_camisa)
                      escreval("")
                      escreval("Digite a quantidade de bonés: ")
                      leia (qtd_bone)
                      escreval("")
                      

                      
                      qtd[1] <- qtd[1] - qtd_calca
                      qtd[2] <- qtd[2] - qtd_camisa
                      qtd[3] <- qtd[3] - qtd_bone
                      
                      escreval("Add mais? S/N: ")
                      leia(sim_nao)
                      
                       Se (sim_nao = "n") ou (sim_nao = "N") então
                         interrompa
                         escreval("Informe o nome do cliente:")
                         leia (nome)
                         escreval("")
                         escreval("Informe o número de telefone:")
                         leia (telefone)
                         escreval("Método de pagamento")
                         escreval("1 - Crédito")
                         escreval("2 - Débito")
                         escreval("3 - Dinheiro")
                         leia (pagamento)

                         Se (pagamento = 1) ou (pagamento = 2) faca
                           escreval("A valor a ser pago é de R$" )
                         
                         Se (pagamento = 3) faca
                         valor_venda <-(valor_venda / 0.10)
                         
                         senao
                         ("Informe o método de pagamento")
                         
                         fimse
                       fimse
                      fimpara

   caso 3  //Faz com que entre na tela de recibos
   limpatela
   escreval("Recebimento")


   caso 4  //Faz com que o programa seja finalizado
   limpatela
   escreval("Volte sempre!")
   Fimalgoritmo
Fimescolha

Fimalgoritmo