Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 

Var
qtd_pizza, tx_garcom, qtd_calzone, vlr_total, qtd_refri, qtd_suco, pedido, opcao: real


Inicio

   ESCREVAL("Qual a qtd de pizzas? ")
   LEIA(qtd_pizza)
    vlr_total <- qtd_pizza * 45.90
   ESCREVAL("Qual a qtd de calzones? ")
   LEIA(qtd_calzone)
    vlr_total <- qtd_calzone * 33.90
   ESCREVAL("Qual a qtd de suco?")
   LEIA(qtd_suco)
    vlr_total <- qtd_suco * 6
   ESCREVAL("Qual a qtd de refri")
   LEIA(qtd_refri)
    vlr_total <- qtd_refri * 4
    
    ESCREVAL("tx do garçom: ")
    tx_garcom <- vlr_total * 0.1
    ESCREVAL(tx_garcom)
    
    ESCREVAL("Valor Total:")
    vlr_total <- vlr_total + tx_garcom
    leia(vlr_total)
Fimalgoritmo