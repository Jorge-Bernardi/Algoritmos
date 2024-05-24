Algoritmo "LOGIN_E_SENHA"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/03/2024
Var
   i:inteiro
   senha, user, user_correto, senha_correta:caracter


Inicio

   Para i de 1 até 3 faça
      Limpatela()
      Escreval("Você tem", i, " de 3 tentativas")
      Escreval("Digite seu user: ")
      leia (user)
      Escreval("Digite sua senha: ")
      leia(senha)

      se (user="jorjao") e (senha="jorge") entao
         Escreval("Permissão Concedida")
         Interrompa
      senao
         Escreval("Conta Bloqueada")
      fimse
   fimpara

Fimalgoritmo
