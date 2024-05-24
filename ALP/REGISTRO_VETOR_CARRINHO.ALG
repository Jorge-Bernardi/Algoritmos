Algoritmo "REGISTRO_VETOR_CARRINHO"

Tipo Produto = registro
     nome : caracter
     qnt, v_u, v_t : real
Fimregistro

Var
   itens : vetor[1..10] de Produto
   opcao, i, posicao, total_itens, add_mais : inteiro


Inicio

    Repita
        Escreval("")
        Escreval("Carrinho de compras")
        Escreval("Escolha uma opção do menu")
        Escreval("1 - Ver Carrinho")
        Escreval("2 - Add Itens")
        Escreval("3 - Atualizar Item")
        Escreval("4 - Remover Itens")
        Escreval("0 - Sair")
        Leia(opcao)

        Escolha(opcao)
        Caso 1
        Limpatela()
        Escreval("")
        Escreval("Lista de Itens no carrinho")
        
        Escreva(" i", i)
        Escreva(" ITEM")
        Escreva("  QNT")
        Escreva("  V_U")
        Escreva("  V_T")
        
        Para i de 1 até 10 faça
             Se(itens[i].nome <> "") Então
             Escreva(i)
             Escreva(" ", itens[i].nome)
             Escreva(" ", itens[i].qnt)
             Escreva(" ", itens[i].v_u:2:2)
             Escreva(" ", itens[i].v_t:2:2)
             Fimse
        Fimpara
        

Fimalgoritmo