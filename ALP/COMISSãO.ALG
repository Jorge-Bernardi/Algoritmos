Algoritmo "COMISSÃO_FRIOS"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 


Var
    qtd_mus, vlr_mus, com_mus: real
    qtd_pre, vlr_pre, com_pre: real
    qtd_mor, vlr_mor, com_mor: real
    qtd_pdp, vlr_pdp, com_pdp: real
    total_venda, total_comissao: real


Inicio

   Escreval ("----------------------------------------")
   Escreval ("           TABELA DE FRIOS              ")
   Escreval ("----------------------------------------")
   
   
   Escreval ("----------------------------------------")
   Escreval ("Qual quantidade vendida mussarela?")
   Escreval ("----------------------------------------")
   Leia (qtd_mus)
   vlr_mus <- qtd_mus *55.0
   com_mus <- vlr_mus *0.07
   
   
   Escreval ("----------------------------------------")
   Escreval ("Qual a quantidade vendida presunto?")
   Escreval ("----------------------------------------")
   Leia (qtd_pre)
   vlr_pre <- qtd_pre *33.0
   com_pre <- vlr_pre *0.04
   
   
   Escreval ("----------------------------------------")
   Escreval ("Qual a quantidade vendida mortadela?")
   Escreval ("----------------------------------------")
   Leia (qtd_mor)
   vlr_mor <- qtd_mor *23.0
   com_mor <- vlr_mor *0.08
   
   
   Escreval ("----------------------------------------")
   Escreval ("Qual a quantidade vendida peito peru?")
   Escreval ("----------------------------------------")
   Leia (qtd_pdp)
   vlr_pdp <- qtd_pdp *85.0
   com_pdp <- vlr_pdp *0.02
   
   
   Escreval ("----------------------------------------")
   Escreval ("Valor total é")
   Escreval ("----------------------------------------")


   total_venda <- vlr_mus + vlr_pre + vlr_mor + vlr_pdp
   total_comissao <- com_mus + com_pre + com_mor + com_pdp
   
   Escreval ("----------------------------------------")
   Escreval ("             TOTAL DE VENDAS            ")
   Escreval ("----------------------------------------")
   Escreval ("Mussarela: R$ ", vlr_mus)
   Escreval ("Presunto: R$ ", vlr_pre)
   Escreval ("Mortadela: R$ ", vlr_mor)
   Escreval ("Peito Peru: R$ ", vlr_pdp)
   Escreval ("Valor Total: R$ ", total_venda)
   Escreval ("")
   Escreval ("----------------------------------------")
   Escreval ("           TOTAL DE COMISSÃO            ")
   Escreval ("----------------------------------------")
   Escreval ("Mussarela: R$ ", com_mus)
   Escreval ("Presunto: R$ ", com_pre)
   Escreval ("Mortadela: R$ ", com_mor)
   Escreval ("Peito Peru: R$ ", com_pdp)
   Escreval ("Comissão Total: R$ ", total_comissao)
        

Fimalgoritmo