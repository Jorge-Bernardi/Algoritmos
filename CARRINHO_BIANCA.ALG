Algoritmo "CARRINHO_COMPRAS"

//funcionalidade de um carrinho de compras, vetor pra armazenar
// os itens no carrinho, cada item tem um nome, quantidade, valor unitario e total
// funcionalidades: add mais itens, atualizar quantidade de itens e remover item do carrinho

Tipo Produto = registro
   nome : caractere
   qnt, v_u, v_t : real

Fimregistro

Var
   itens: vetor[1..10] de Produto
   opcao, i, posicao, total_itens, add_mais: inteiro

Inicio
   total_itens <- 1
   Escreval("CARRINHO DE COMPRAS!")

   Repita
      Repita
         Escreval("1 - Ver carrinho")
         Escreval("2 - Add itens")
         Escreval("3 - Atualizar item")
         Escreval("4 - Remover itens")
         Escreval("0 - Sair do sistema")
         Leia(opcao)
      Ate (opcao >= 0) E (opcao < 5)

      Se (opcao = 1) Entao
         Escreval("")
         Escreval("ID         ITEM        QNT        VALOR UNIT         VALOR TOTAL")
         Escreval("")
         Para i de 1 ate 10 Faca
            Se (itens[i].nome <> "") entao
               Escreval(i,"      ",itens[i].nome,"    ", itens[i].qnt, "     ", itens[i].v_u, "      ", itens[i].v_t)
            Fimse
         Fimpara

      Senao
         Se (opcao = 2) Entao
            Para i de total_itens ate 10 faça
               Escreval("")
               Escreval("Informe o nome do item")
               Leia (itens[i].nome)
               Escreval("")
               Repita
                  Escreval("Informe o valor do item")
                  Leia (itens[i].v_u)
               Até (itens[i].v_u > 0)

               Escreval("")

               Repita
                  Escreval("Informe a quantidade do item")
                  Leia (itens[i].qnt)
               Até (itens[i].qnt > 0)

               itens[i].v_t <- itens[i].qnt * itens[i].v_u

               total_itens <- total_itens + 1

               Repita
                  Escreval("")
                  Escreval("Adicionar mais itens?")
                  Escreval("1. Sim")
                  Escreval("2. Não")
                  Escreval("")
                  Leia(add_mais)
               Ate (add_mais > 0) e (add_mais < 3)
               Se (add_mais = 2) entao
                  Interrompa()
               Fimse
            Fimpara
         Senao
            Se (opcao = 3) Entao
               Escreval("Qual a posição do carrinho você quer editar?")
               Leia(posicao)
               Repita
                  Escreval("Qual campo você quer editar?")
                  Escreval("1. Nome")
                  Escreval("2. Quantidade")
                  Escreval("3. Valor Unitário")
                  Leia(opcao)
               Ate (opcao > 0) e (opcao < 4)

               Se (opcao = 1) entao
                  Escreval("Novo nome:")
                  Leia(itens[posicao].nome)
               Senao
                  Se (opcao = 2) Entao
                     Escreval("Nova quantidade:")
                     Leia(itens[posicao].qnt)
                     itens[posicao].v_t <- itens[posicao].qnt * itens[posicao].v_u
                  Senao
                     Escreval("Novo valor unitário:")
                     Leia(itens[posicao].v_u)
                     itens[posicao].v_t <- itens[posicao].qnt * itens[posicao].v_u
                  Fimse
               Fimse

            Senao
               Escreval("Qual a posição do carrinho você quer deletar?")
               Leia(posicao)

               itens[posicao].nome <- ""
               itens[posicao].qnt <- 0
               itens[posicao].v_u <- 0
               itens[posicao].v_t <- 0
            Fimse
         Fimse
      Fimse


   Ate (opcao = 0)
Fimalgoritmo

