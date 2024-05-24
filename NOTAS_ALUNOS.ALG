Algoritmo "NOTAS_ALUNOS"

Var
   medias: vetor[1..10] de real
   nomes: vetor[1..10] de caracter
   i, j: inteiro
   media_sala, p1, p2: real
Inicio

      Para i de 1 até 10 Faça
           
           Escreval("Qual o nome do aluno", i, " ?")
           leia(nomes[i])
           Escreval("Qual a nota da p1?")
           Leia(p1)
           Escreval("Qual a nota da p2?")
           Leia(p2)
           limpatela()
           medias[i]<- (p1+p2)/2
           
      Fimpara
      
      Para j de 1 até 10 Faça

           Escreval("A média do aluno ", nomes[j], " é:", medias[j])
           media_sala<- media_sala + medias[j]
           Se (medias[j]>=7) entao
                 escreval("O aluno,", nomes[j], " está aprovado!!")
           fimse
           
           se (medias[j]<7) entao
                 Escreval("O aluno,", nomes[j]," vai ter que estudar com o lucas dnv!!")
           fimse
      Fimpara
      
      media_sala<- media_sala/10
      Escreval("A média da sala é: ", media_sala)
Fimalgoritmo