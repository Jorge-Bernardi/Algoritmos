Algoritmo "Calc IMC"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Faça um algoritmo que cálcule o Índice de Massa Corporal (IMC).
//Para calcular, receba a altura e o peso do usuário, mostre o valor do índice
//e a classficação que ele se encontra. Fórmula: imc = peso /(altura * altura)
Var
   // Seção de Declarações das variáveis
   imc, altura, peso:real


Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   Escreval("Insira sua altura (Em Metros): ")
   leia (altura)

   Escreval("Insira seu peso: ")
   leia (peso)

   imc <- peso / (altura * altura)

   Se (imc <= 18.5) Então
      Escreval("Você está abaixo do seu peso.")
   Senão
      Se (imc > 18.5) e (imc < 24.9) Então
         Escreval("O seu peso está normal.")
      Senão
         Se (imc > 25.0) e (imc < 29.9) Então
            Escreval("Você está com excesso de peso.")
         Senão
            Se (imc > 30.0) e (imc < 34.9) Então
               Escreval("Você está com Obesidade Classe I")
            Senão
               Se (imc > 35.0) e (imc < 39.9) Então
                  Escreval("Você está com Obesidade Classe II")
               Senão
                  Se (imc > 40.0)  Então
                     Escreval("Você está com Obesidade Classe III")
                  Fimse
               Fimse
            Fimse
         Fimse
      Fimse
   Fimse

   Escreval("O valor do seu IMC é de: ", imc:2:2)


Fimalgoritmo


