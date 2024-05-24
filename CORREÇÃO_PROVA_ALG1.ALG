Algoritmo "CORREÇÃO_PROVA_ALG1"

Var
   itens: vetor[1..5] de caracter
   itens_qnt: vetor[1..5] de inteiro
   itens_preco: vetor[1..5] de real
   
   opcao, i, item_selecionado, qnt: inteiro
   
   itens_venda: vetor[1..5] de caracter
   itens_venda_qnt: vetor[1..5] de inteiro
   itens_venda_valur: vetor[1..5] de real
   
   add_mais: caracter
   
   cliente_nome, cliente_telefone: caracter
   forma_pgto: inteiro

   total_compra: real
Inicio
      itens[1] <- "Camiseta"
      itens_qnt[1] <- 5
      itens_preco[1] <- 29.9
      
      itens[2] <- "Calça"
      itens_qnt[2] <- 4
      itens_preco[2] <- 99.9
      
      itens[3] <- "Tenis"
      itens_qnt[3] <- 9
      itens_preco[3] <- 53.2
      
      itens[4] <- "Boné"
      itens_qnt[4] <- 7
      itens_preco[4] <- 21.8

      itens[5] <- "Chinelo"
      itens_qnt[5] <- 11
      itens_preco[5] <- 59.9

      Escreval("Bem-Vindo ao SysLoja")
      Escreval("1 - Ver Estoque")
      Escreval("2 - Realizar Venda")
      Escreval("3 - Fazer Recebimento")
      Escreval("0 - Sair do Sistema")
      Leia(opcao)
      
      Se (opcao = 1) Então
         // Ver estoque
         Limpatela()
         Escreval("ESTOQUE DISPONÍVEL")
         Escreval("Cód.|| Item|| Qnt|| Preço")
         Para i de 1 Até 5 Faça
              Escreva(i, " ")
              Escreva(itens[i], " ")
              Escreva(itens_qnt[i], " ")
              Escreva(itens_preco[i])
         Fimpara
      Fimse  // Fecha opção 1
      
      Se (opcao = 2) Então
         // Fazer Venda
         Limpatela()
         Escreval("NOVA VENDA")
         Escreval("ESTOQUE DISPONÍVEL")
         Escreval("Cód.|| Item|| Qnt|| Preço")
         Para i de 1 Até 5 Faça
             Escreva(i, " ")
             Escreva(itens[i], " ")
             Escreva(itens_qnt[i], " ")
             Escreval(itens_preco[i])
         Fimpara
         
         Escreva("Qual nome do cliente:")
         Leia(cliente_nome)
         Escreva ("Qual telefone:")
         Leia(cliente_telefone)
         
         Para i de 1 Até 5 Faça
         
              Escreva("Selecione o cód. do item: ")
              Leia(item_selecionado)
              
              // Validando que a quantidade
              / Seja maior que zero.
              Repita
                  Escreva("que quantidade de", itens[item_selecionado])
                  Escreva("você quer? ")
                  Leia(qnt)
              Até (qnt > 0)
              
              items_venda[i] <- itens[item_selecionado]
              itens_venda_qnt[i] <- qnt
              itens_venda_valor[i] <- itens_preco[item_selecionado] * qnt
              total_compra <- total_compra + itens_venda_valor[i]
              
              Escreval("Adicionar mais? S/n")
              Leia(add_mais)
              Se (add_mais = "n") Então
                 Interrompa
              Fimse
         Fimpara

         Escreval("A compra deu R$", total_compra)
         Escreval("Selecione a forma de pagamento:")
         Escreval("1 - Dinheiro")
         Escreval("2 - Pix")
         Escreval("3 - Cartão")
         Leia(forma_pgto)
         Limpatela()
      Fimse

      Se(opcao = 3) Então
          //  Fazer recebimento
          Limpatela()
          Escreval("RECEBIMENTO DA VENDA")
          Escreva("Cliente: ", cliente_nome)
          Escreval(" Telefone: ", cliente_telefone)
          Escreval("Cód.  || Item  || Qnt  || Total")
          Para i de 1 Até 5 Faça
               Se (itens_venda[i] <> "") Então
                  Escreva(i, " ")
                  Escreva(itens_venda[i], " ")
                  Escreva(itens_venda_qnt[i], " ")
                  Escreval(itens_venda_valor[i])
               Fimse
          Fimpara
          Escreval("Valor Total R$", total_compra)
          Escreval("Forma de pgto selecionada: ", forma_pgto)
          Se(forma_pgto = 1) Então
             total_compra <- total_compra - (total_compra * 0.1)
             Escreval("Valor com desconto R$", total_compra)
          Fimse
      Fimse
   Até (opcao = 0)
   
Fimalgoritmo