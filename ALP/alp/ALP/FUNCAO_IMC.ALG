Algoritmo "FUNCAO_IMC"

Var

Funcao calcular_imc() : real //Declara
Var
   peso, altura: real
Inicio
      Escreval("Qual a sua altura?")
      Leia(altura)
      Escreval("Qual o seu peso?")
      Leia(peso)
      RETORNE peso/(altura*altura)
Fimfuncao
Inicio
      Escreval("Seu IMC é: ", calcular_imc())


Fimalgoritmo