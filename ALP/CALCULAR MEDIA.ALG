Algoritmo "Calcular Media"
// 
//  
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/03/2024
Var
// Se��o de Declara��es das vari�veis 
n1, n2, media : real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
  Escreval("Digite n1: ")
  Leia(n1)
  Escreval("Digite n2: ")
  Leia(n2)
  media <- (n1 + n2) / 2
  Escreval("A m�dia do aluno �: ", media)
  
  Se (media >= 6) Entao
    Escreval("Aprovado!")
    Escreval("Parabens!")
  Senao
    Escreval("Reprovado")
  Fimse

Fimalgoritmo
