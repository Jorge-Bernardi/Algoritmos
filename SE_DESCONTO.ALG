Algoritmo "SE_DESCONTO"

Var

   valor_produto, valor_final, desconto : real
   condicao_pgto : inteiro

Inicio

   Escreval("Qual � o valor do produto")
   Leia(valor_produto)
   Escreval("Qual � a forma de pagamento?")
   Escreval("1 - Cart�o")
   Escreval("2 - Pix")
   Escreval("3 - Dinheiro")
   Leia(condicao_pgto)

   Se (condicao_pgto = 1) Entao
      Escreval("Pagamento no Cart�o, n�o haver� descontos no pagamento.")
      Escreval("O valor a ser pago ser�: ", valor_produto)
   Senao
      Se (condicao_pgto = 2) Entao
         desconto <- valor_produto * 0.06
         Escreval("Pagamento em PIX, desconto de: R$", desconto)
         valor_final <- valor_produto - desconto
         Escreval("O valor a ser pago ser�: R$", valor_final)
      Senao
         Se (condicao_pgto = 3) Entao
            desconto <- valor_produto * 0.1
            Escreval("Pagamento em Dinheiro, desconto de: R$", desconto)
            valor_final <- valor_produto - desconto
            Escreval("O valor a ser pago sera: R$", valor_final)
         Fimse
      Fimse
   Fimse
Fimalgoritmo