Algoritmo "PARA_ACUMULADOR_TIME"

Var
   jogadores, i: inteiro
   altura_media, alt, alt_max, alt_min, alt_soma: real


Inicio

   ESCREVAL("Qual a Quantidade de Jogadores?")
   LEIA(jogadores)

   PARA i DE 1 AT� jogadores FACA
      ESCREVAL("Qual a Altura do Jogador", i, "?")
      LEIA(alt)

      alt_soma <- alt_soma + alt
      SE (i=1) ENT�O
         alt_max <- alt
         alt_min <- alt
      fimse

      SE (alt > alt_max) ENT�O
         alt_max <- alt
      FIMSE

      SE (alt < alt_min) ENT�O
         alt_min <- alt
      FIMSE


   FIMPARA
   LIMPATELA()


   altura_media <- alt_soma / jogadores
   ESCREVAL("Altura M�dia do Time �:", altura_media)
   ESCREVAL("Altura M�xima: ", alt_max)
   ESCREVAL("Altura M�nima: ", alt_min)

Fimalgoritmo