Algoritmo "PROCEDIMENTO_IMC"


Var
   imc : real

Procedimento calcular_imc ()
Var
   peso, altura: real
Inicio
      Escreval("Qual a sua altura?")
      Escreval("Obs: coloque com o . ")
      Leia(altura)
      Escreval("Qual o seu peso?")
      Leia(peso)
      imc <- peso / (altura * altura)
Fimprocedimento
Inicio
      calcular_imc()
      Escreval("Resultado", imc)



Fimalgoritmo