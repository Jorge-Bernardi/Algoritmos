Algoritmo "PROCEDIMENTO_CALCULADORA"

Var
   // VARIAV�IS GLOBAIS
   primeiro_numero, segundo_numero, res : real
   opcao : inteiro

PROCEDIMENTO somar ()
Inicio
   res <- primeiro_numero + segundo_numero
FIMPROCEDIMENTO

PROCEDIMENTO subtrair ()
Inicio
   res <- primeiro_numero - segundo_numero
FIMPROCEDIMENTO

PROCEDIMENTO multiplicar ()
Inicio
   res <- primeiro_numero * segundo_numero
FIMPROCEDIMENTO

PROCEDIMENTO dividir ()
Inicio
   res <- primeiro_numero / segundo_numero
FIMPROCEDIMENTO

Inicio

   Escreval("Qual a opera��o deseja realizar?")
   Escreval("1 - Somar")
   Escreval("2 - Subtrair")
   Escreval("3 - Multiplicar")
   Escreval("4 - Dividir")
   Escreval("0 - Sair")
   leia (opcao)
   Escreval("Insira o n�mero 1: ")
   leia(primeiro_numero)
   Escreval("Insira o n�mero 2: ")
   leia(segundo_numero)


      se (opcao = 1) entao
         somar()
         Escreval("O resultado �: ", res)
      fimse
      se (opcao = 2) entao
         subtrair()
         Escreval("O resultado �: ", res)
      fimse
      se (opcao = 3) entao
         multiplicar()
         Escreval("O resultado �: ", res)
      fimse
      se (opcao = 4) entao
         dividir
         Escreval("O resultado �: ", res)
      fimse
      se (opcao = 0) entao
         interrompa
      fimse




Fimalgoritmo