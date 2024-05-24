Algoritmo "Calcular Media"
// 
//  
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 01/03/2024
Var
// Seção de Declarações das variáveis 
n1, n2, media : real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
  Escreval("Digite n1: ")
  Leia(n1)
  Escreval("Digite n2: ")
  Leia(n2)
  media <- (n1 + n2) / 2
  Escreval("A média do aluno é: ", media)
  
  Se (media >= 6) Entao
    Escreval("Aprovado!")
    Escreval("Parabens!")
  Senao
    Escreval("Reprovado")
  Fimse

Fimalgoritmo
