Algoritmo "Calc IMC"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Fa�a um algoritmo que c�lcule o �ndice de Massa Corporal (IMC).
//Para calcular, receba a altura e o peso do usu�rio, mostre o valor do �ndice
//e a classfica��o que ele se encontra. F�rmula: imc = peso /(altura * altura)
Var
   // Se��o de Declara��es das vari�veis
   imc, altura, peso:real


Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   Escreval("Insira sua altura (Em Metros): ")
   leia (altura)

   Escreval("Insira seu peso: ")
   leia (peso)

   imc <- peso / (altura * altura)

   Se (imc <= 18.5) Ent�o
      Escreval("Voc� est� abaixo do seu peso.")
   Sen�o
      Se (imc > 18.5) e (imc < 24.9) Ent�o
         Escreval("O seu peso est� normal.")
      Sen�o
         Se (imc > 25.0) e (imc < 29.9) Ent�o
            Escreval("Voc� est� com excesso de peso.")
         Sen�o
            Se (imc > 30.0) e (imc < 34.9) Ent�o
               Escreval("Voc� est� com Obesidade Classe I")
            Sen�o
               Se (imc > 35.0) e (imc < 39.9) Ent�o
                  Escreval("Voc� est� com Obesidade Classe II")
               Sen�o
                  Se (imc > 40.0)  Ent�o
                     Escreval("Voc� est� com Obesidade Classe III")
                  Fimse
               Fimse
            Fimse
         Fimse
      Fimse
   Fimse

   Escreval("O valor do seu IMC � de: ", imc:2:2)


Fimalgoritmo


