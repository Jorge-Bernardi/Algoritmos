Algoritmo "REGISTRO_CHURRASCO"

Tipo ingrediente = registro
   nome : caracter
   qnt : real
   valorUnit : real
   valorTotal : real
Fimregistro

Var

   itens : vetor[1..100] de ingrediente // Tipo de vari�vel personalizada
   i, qnt_pessoas : inteiro
   valor_individual, custo_total : real
   add_mais : caracter

Inicio


   Escreval("Quantas pessoas v�o ao churrasco? ")
   Leia(qnt_pessoas)

   Para i de 1 at� 100 Fa�a
      Limpatela()
      Escreva("Qual o nome do item:")
      Leia(itens[i].nome)
      Escreva("Qual � a quantidade: ")
      Leia(itens[i].qnt)
      Escreva("Qual � o Valor Unit�rio: ")
      Leia(itens[i].valorUnit)



      itens[i].valorTotal <- itens[i].valorUnit * itens[i].qnt
      custo_total <- custo_total + itens[i].valorTotal
      valor_individual <- custo_total / qnt_pessoas
      Escreval("--------------------------")
      Escreval("Total at� agora: R$", custo_total)


      Escreval("Add mais? S/n: ")
      Leia(add_mais)

      Se(add_mais = "n") Ent�o
         interrompa
      Fimse
   Fimpara




   Para i de 1 at� 100 Fa�a
      Se (itens[i].nome <> "") Ent�o
         Escreva(i)
         Escreva(" ", itens[i].nome)
         Escreva(" ", itens[i].qnt)
         Escreva(" ", itens[i].valorUnit:2:2)
         Escreval(" ", itens[i].valorTotal:2:2)

      Fimse
   Fimpara
   Escreval("Valor total do churrasco �: ", custo_total)
   Escreval("Total Individual: R$", valor_individual)


Fimalgoritmo