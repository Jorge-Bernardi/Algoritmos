Algoritmo "SE_EMPRESTIMO_COM_SEGURO"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi

Var
   saldo, valor_credito, seguro, idade, emprestimo :real


Inicio
   Escreval("Qual foi seu saldo m�dio no ano passado?")
   Leia (saldo)
   Escreval("Digite sua idade:")
   Leia (idade)
   se (saldo <=200) entao
      Escreval("Emprestimo n�o concedido")
   senao
      se (saldo>=201) e (saldo<=400) entao
         emprestimo <- saldo*0.2
         Escreval("20% Do Valor M�dio")
      senao
         se (saldo>=401)e(saldo<=600) entao
            emprestimo <- saldo*0.3
            Escreval("30% Do Valor M�dio)
         senao
            se (saldo>=601) entao
               emprestimo <- saldo*0.4
               Escreval("40% do Valor M�dio")
            fimse
         fimse
      fimse
   fimse
   se (idade<18) entao
   Escreval("N�o podemos emprestar pra mucilon")
   fimalgoritmo
     sen�o
   se (idade>=18)e (idade<=24) entao
      seguro<-eemprestimo*0.02
   senao

      se (idade>=25)E(idade<=35) entao
         seguro<-emprestimo*0.06
      senao

         se (idade>= 36) e (idade<=45) entao
            seguro<-emprestimo*0.08
         senao

            se (idade>=46) e(idade<=55)entao
               emprestimo<-saldo*0.1
            senao

               se (idade>55) entao
                  emprestimo<-saldo*0.15
               fimse
            fimse
         fimse
      fimse
   fimse
   fimse
   Escreval("Valor Liberado: R$", emprestimo)
   Escreval("Valor do Seguro: R$", seguro)
   Escreval("Total:", emprestimo+seguro )



Fimalgoritmo
