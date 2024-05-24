Algoritmo "ROBO_WHATS_LANCHONETE"

Var

   forma_pgto, novo_pedido, opcao, opcao_pagamento: inteiro
   tx_entrega, vlr_total, troco, vlr, dinheiro: real

Inicio

   ESCREVAL("Boa Noite, Qual é seu pedido?")
   REPITA
      ESCREVAL("1 - Quero Ver o Cardápio")
      ESCREVAL("2 - Já sei o Meu Pedido")
      ESCREVAL("0 - Finalizar Atendimento")
      LEIA(opcao)
      ESCREVAL (" ")
      
      SE(opcao = 1)ENTAO
         ESCREVAL("Olá, nós temos 2 tipos de lanche:")
         ESCREVAL("1 - Qualquer Um - R$: 35,00")
         ESCREVAL("2 - Tanto Faz - RS: 40,00")
         ESCREVAL("Qual seu Pedido?")
         LEIA(novo_pedido)
         ESCREVAL (" ")
         
         SE (novo_pedido = 1) ENTAO
            vlr <- vlr + 35
         FIMSE
         
         SE (novo_pedido = 2) ENTAO
            vlr <- vlr + 40
         FIMSE
      FIMSE

      SE(opcao = 2)ENTAO
         ESCREVAL("Qual seu Pedido?")
         LEIA(novo_pedido)
         ESCREVAL (" ")
         
         SE (novo_pedido = 1) ENTAO
            vlr <- vlr + 35
         FIMSE

         SE (novo_pedido = 2) ENTAO
            vlr <- vlr + 40
         FIMSE
      FIMSE

      tx_entrega <- vlr*0.1
      vlr_total<- vlr + tx_entrega

   ATE (opcao = 0)
      
   ESCREVAL("O Valor Total (com entrega): R$ ", vlr_total, " | Taxa de entrega: R$ ", tx_entrega)
   ESCREVAL("Qual a Forma de Pagamento?")
   ESCREVAL("1-PIX")
   ESCREVAL("2-CARTÃO DÉBITO/CRÉDITO")
   ESCREVAL("3-DINHEIRO")
   LEIA(opcao_pagamento)
   ESCREVAL (" ")
      
   SE(opcao_pagamento = 1) OU (opcao_pagamento = 2) ENTAO
       ESCREVAL("Seu pedido está sendo preparado...")
   FIMSE
   SE(opcao_pagamento = 3)ENTAO
   
   REPITA
      ESCREVAL("Qual será o valor pago?")
      LEIA(dinheiro)
      ESCREVAL (" ")

      troco <- dinheiro - vlr_total
      
      SE (dinheiro < vlr_total) ENTAO
         ESCREVAL ("O VALOR PAGO DEVE SER MAIOR OU IGUAL QUE O VALOR TOTAL!")
      FIMSE
   ATE (dinheiro >= vlr_total)
      
      ESCREVAL("O TROCO É DE R$", troco)
   FIMSE

Fimalgoritmo