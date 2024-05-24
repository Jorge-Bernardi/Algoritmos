Algoritmo "REGISTRO_VETOR_CARRINHO"

Tipo Produto = registro
     nome, nome_novo : caracter
     qnt, v_u, v_t : real
Fimregistro

procedimento mostrar_carrinho()
             Escreval("Seu carrinho: ")
             leia (nome)
fimprocedimento
procedimento add()
             Escreval("Adicionar Itens: ")
             Leia(nome)
fimprocedimento
procedimento atualizar()
             Escreval("Atualizar itens: ")
             leia(nome_novo)
fimprocedimento
procedimento remover()
             Escreval("Remover itens: ")
             leia(nome)
fimprocedimento
Var
   itens: vetor[1..20] de Produto
   opcao, total_itens : inteiro
   
Funcao Dinheiro(valor : real) : caracter
Var
    tmp : caracter
Inicio
    tmp <- "R$" + numpcarac(valor)
    Retorne tmp
Fimfuncao

Inicio
      Escreval("Carrinho de Compras")
      Escreval("Escolha uma opção de menu: ")
      Escreval("1 - Ver Carrinho")
      Escreval("2 - Add Itens")
      Escreval("3 - Atualizar Item")
      Escreval("4 - Remover Itens")
      Escreval("0 - Sair")
      Leia(opcao)
      
      Limpatela()
      
      Escolha(opcao)
      Caso 1

           Escreval("Os itens no seu carrinho são: ")
           Escreval("i")
           Escreval("NOME")
           Escreval("QTD")
           Escreval("V_U")
           Escreval("V_T")
            mostrar_carrinho()
      Caso 2

           Escreval("Qual item será adicionado? ")
           leia([itens])
           add()
      Caso 3

           Escreval("Qual item será atualizado? ")
           leia(nome_novo)
           atualizar()
      Caso 4

           Escreval("Qual item será removido? ")
           leia(nome)
           remover()
      Fimescolha


Fimalgoritmo