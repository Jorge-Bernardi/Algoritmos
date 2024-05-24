Algoritmo "REGISTRO_CHURRASCO"

Tipo ingrediente = registro
   nome : caracter
   qnt : real
   valorUnit : real
   valorTotal : real
Fimregistro

Var

   itens : vetor[1..100] de ingrediente // Tipo de variável personalizada
   i, qnt_pessoas : inteiro
   valor_individual, custo_total : real
   add_mais : caracter

Inicio


   Escreval("Quantas pessoas vão ao churrasco? ")
   Leia(qnt_pessoas)

   Para i de 1 até 100 Faça
      Limpatela()
      Escreva("Qual o nome do item:")
      Leia(itens[i].nome)
      Escreva("Qual é a quantidade: ")
      Leia(itens[i].qnt)
      Escreva("Qual é o Valor Unitário: ")
      Leia(itens[i].valorUnit)



      itens[i].valorTotal <- itens[i].valorUnit * itens[i].qnt
      custo_total <- custo_total + itens[i].valorTotal
      valor_individual <- custo_total / qnt_pessoas
      Escreval("--------------------------")
      Escreval("Total até agora: R$", custo_total)


      Escreval("Add mais? S/n: ")
      Leia(add_mais)

      Se(add_mais = "n") Então
         interrompa
      Fimse
   Fimpara




   Para i de 1 até 100 Faça
      Se (itens[i].nome <> "") Então
         Escreva(i)
         Escreva(" ", itens[i].nome)
         Escreva(" ", itens[i].qnt)
         Escreva(" ", itens[i].valorUnit:2:2)
         Escreval(" ", itens[i].valorTotal:2:2)

      Fimse
   Fimpara
   Escreval("Valor total do churrasco é: ", custo_total)
   Escreval("Total Individual: R$", valor_individual)


Fimalgoritmo