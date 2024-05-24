Algoritmo "PARA_ACUMULADOR_TIME"

Var
   jogadores, i: inteiro
   altura_media, alt, alt_max, alt_min, alt_soma: real


Inicio

   ESCREVAL("Qual a Quantidade de Jogadores?")
   LEIA(jogadores)

   PARA i DE 1 ATÉ jogadores FACA
      ESCREVAL("Qual a Altura do Jogador", i, "?")
      LEIA(alt)

      alt_soma <- alt_soma + alt
      SE (i=1) ENTÃO
         alt_max <- alt
         alt_min <- alt
      fimse

      SE (alt > alt_max) ENTÃO
         alt_max <- alt
      FIMSE

      SE (alt < alt_min) ENTÃO
         alt_min <- alt
      FIMSE


   FIMPARA
   LIMPATELA()


   altura_media <- alt_soma / jogadores
   ESCREVAL("Altura Média do Time é:", altura_media)
   ESCREVAL("Altura Máxima: ", alt_max)
   ESCREVAL("Altura Mínima: ", alt_min)

Fimalgoritmo