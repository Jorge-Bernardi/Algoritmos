Algoritmo "REPITA_MENU"

Var
   opcao: inteiro


Inicio
REPITA
     ESCREVAL("1 - Dizer Ol�!")
     ESCREVAL("2 - DIzer Oi!")
     ESCREVAL("0 - Sair do Programa")
     LEIA(opcao)
     SE(opcao = 1) ENTAO
     ESCREVAL("Ol�!")
     FIMSE
     SE(opcao = 2) ENTAO
     ESCREVAL("Oi!")
     FIMSE
     ATE(opcao = 0)
     ESCREVAL("Saiu do Repita")
     


Fimalgoritmo