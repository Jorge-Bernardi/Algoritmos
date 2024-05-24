Algoritmo "JOGODAVELHA"

Var
   jogo: vetor[1..3, 1..3] de caractere
   i, j, k: inteiro
   simbolo: vetor[1..2] de caractere
   linha, coluna: inteiro

Inicio
   Para i de 1 até 3 faça
      Para i de j até 3 faça
         jogo[i, j] <- "  "
      Fimpara
   Fimpara

   simbolo[1] <- "X"
   simbolo[2] <- "O"

   Escreval("JOGO DA VELHA MAIS LEGAL DE TODOS!")
   Escreval("")

   Para i de 1 até 3 Faça
      Para j de 1 até 3 Faça
         Para k de 1 até 2 Faça

            Repita
               Escreval("Vez do jogador ", simbolo[k], ": Informe a coluna")
               Leia(coluna)
            Até(coluna > 0) E (coluna < 4)

            Repita
               Escreval("Vez do jogador ", simbolo[k], ": Informe a linha")
               Leia(linha)
            Até(linha > 0) E (linha < 4)

            jogo[coluna, linha] <- simbolo[k]

            limpatela()

            Escreval("JOGO DA VELHA MAIS LEGAL DE TODOS!")
            Escreval("")
            Escreval(jogo[1,1]," | ",jogo[2,1]," | ",jogo[3,1])
            Escreval("-----------------")
            Escreval(jogo[1,2]," | ",jogo[2,2]," | ",jogo[3,2])
            Escreval("-----------------")
            Escreval(jogo[1,3]," | ",jogo[2,3]," | ",jogo[3,3])
            Escreval("")

            //Conferindo a primeira linha
            Se (jogo[1,1] <> "") E(jogo[1,1] = jogo[2,1]) E (jogo[1,1] = jogo[3,1]) Entao
               Escreval("O JOGADOR ", jogo[1,1], " GANHOU!")
               Interrompa()
            Senao
               //Conferindo a segunda linha
               Se (jogo[1,2] <> "") E (jogo[1,2] = jogo[2,2]) E (jogo[1,2] = jogo[3,2]) Entao
                  Escreval("O JOGADOR", jogo[1,2], "GANHOU!")
                  Interrompa()
               Senao
                  //Conferindo a terceira linha
                  Se (jogo[1,3] <> "") E (jogo[1,3] = jogo[2,3]) E (jogo[1,3] = jogo[3,3]) Entao
                     Escreval("O JOGADOR", jogo[1,3], " GANHOU!")
                     Interrompa()
                  Senao
                     //Conferindo a primeira coluna
                     Se (jogo[1,1] <> "") E (jogo[1,1] = jogo[1,2]) E (jogo[1,1] = jogo[1,3]) Entao
                        Escreval("O JOGADOR", jogo[1,1], "GANHOU!")
                        Interrompa()
                     Senao
                        //Conferindo a segunda coluna
                        Se (jogo[2,1] <> "") E (jogo[2,1] = jogo[2,2]) E (jogo[2,1] = jogo[2,3]) Entao
                           Escreval("O JOGADOR", jogo[2,1], "GANHOU!")
                           Interrompa()
                        Senao
                           //Conferindo a terceira coluna
                           Se (jogo[3,1] <> "") E (jogo[3,1] = jogo[3,2]) E (jogo[3,1] = jogo[3,3]) Entao
                              Escreval("O JOGADOR", jogo[3,1], "GANHOU!")
                              Interrompa()
                           Senao
                              //Conferindo a diagonal esquerda p/ direita
                              Se (jogo[1,1] <> "") E (jogo[1,1] = jogo[2,2]) E (jogo[1,1] = jogo[3,3]) Entao
                                 Escreval("O JOGADOR", jogo[1,1], "GANHOU!")
                                 Interrompa()
                              Senao
                                 //Conferindo a diagonal direita p/ esquerda
                                 Se (jogo[3,1] <> "") E (jogo[3,1] = jogo[2,2]) E (jogo[3,1] = jogo[1,3]) Entao
                                    Escreval("O JOGADOR", jogo[2,2], "GANHOU!")
                                    Interrompa()
                                 Fimse
                              Fimse
                           Fimse
                        Fimse
                     Fimse
                  Fimse
               Fimse
            Fimse
         Fimpara
      Fimpara
   Fimpara

   Escreval("DEU VELHA!")



Fimalgoritmo