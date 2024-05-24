Algoritmo "MATRIZ"

Var
   jogo : vetor [1..3, 1..3] de caracter
   linha, coluna, i, j, jogadas : inteiro
   jogador, posicao : caracter
Inicio

   Para jogadas de 1 até 9 faça
          Escreval(" JOGO DA VELHA")
      Escreval("Jogada", jogadas, " de 9: ")
      Escreval(jogo[1,1]," | ", jogo[1,2]," | ", jogo[1,3])
      Escreval("-----------")
      Escreval(jogo[2,1]," | ", jogo[2,2]," | ", jogo[2,3])
      Escreval("-----------")
      Escreval(jogo[3,1]," | ", jogo[3,2]," | ", jogo[3,3])

      Escreval("Qual a posição que você quer por o ", jogador, " ?")
      Repita
         Escreva("Informe a linha: ")
         Leia(linha)
      Até(linha>0) e (linha<=3)
      Repita
         Escreva("Informe a coluna: ")
         Leia(coluna)
      até(coluna>0)e (coluna<=3)
      jogo[linha, coluna] <- jogador

      limpatela()



      se (jogador = "X") entao
         jogador <- "O"
      senao
         jogador <- "X"
      fimse

        para i de 1 ate 3 faca
      Se (jogo[i,1]= "O") e (jogo[i,2]= "O") e (jogo[i,3]="O") entao
         escreval("Bolinha venceu")
         interrompa
      Fimse
      fimpara
             para j de 1 ate 3 faca
      Se (jogo[j,1]= "X") e (jogo[j,2]= "X") e (jogo[j,3]="X") entao
         escreval("O X venceu")
         interrompa
      fimse
      fimpara
   fimpara
Fimalgoritmo