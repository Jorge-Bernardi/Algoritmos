Algoritmo "Salario_liquido"

Var
  salario_bruto, salario_liquido, INSS, IR, descontos_total:real


Inicio

    Escreval("Salário Bruto?")
    Leia(salario_bruto)
    Se (INSS<=1.412) Então
    Escreval("Alíquota de 7,5%")
    Senão
     Se (INSS>=1.412,01)E(INSS<=2.666,68) Então
    Escreval("Alíquota de 9%")
    Senão
     Se (INSS>=2.666,69)E(INSS<=4.000,03) Então
    Escreval("Alíquota de 12%")
    Senão
     Se (INSS>=4.000,04)E(INSS<=7.786,02) Então
    Escreval("Alíquota de 7,5%")
    Senão
    // As alíquotas são de 7,5% para aqueles que ganham até R$ 1.412,00;
    // de 9% para quem ganha entre R$ 1.412,01 até R$ 2.666,68;
    //de 12% para os que ganham entre R$ 2.666,69 até R$ 4.000,03;
    // e de 14% para quem ganha de R$ 4.000,04 até R$ 7.786,02.
    Leia(INSS)
    Escreval("IR")
    // Até R$ 2.259,20	zero (Aliquota)	zero (dedução do IR)
    // De R$ 2.259,21 até R$ 2.826,65	7,5%	R$ 169,44
    //De R$ 2.826,66 até R$ 3.751,05	15%	R$ 381,44
    //De R$ 3.751,06 até R$ 4.664,68	22,5%	R$ 662,77
    //Acima de R$ 4.664,68	27,5%	R$ 896,00
    Leia(IR)
    Escreval("Descontos Finais")
    Leia(descontos_total)
    Escreval("Salário Líquido")
    Leia(salario_liquido)
    Fimse
    fimse
    fimse
    fimse
    fimse
    

Fimalgoritmo