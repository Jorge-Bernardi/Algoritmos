Algoritmo "LOGIN_E_SENHA"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 08/03/2024
Var
   i:inteiro
   senha, user, user_correto, senha_correta:caracter


Inicio

   Para i de 1 at� 3 fa�a
      Limpatela()
      Escreval("Voc� tem", i, " de 3 tentativas")
      Escreval("Digite seu user: ")
      leia (user)
      Escreval("Digite sua senha: ")
      leia(senha)

      se (user="jorjao") e (senha="jorge") entao
         Escreval("Permiss�o Concedida")
         Interrompa
      senao
         Escreval("Conta Bloqueada")
      fimse
   fimpara

Fimalgoritmo
