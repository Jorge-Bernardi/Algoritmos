Algoritmo "Salario_liquido"

Var
  salario_bruto, salario_liquido, INSS, IR, descontos_total:real


Inicio

    Escreval("Sal�rio Bruto?")
    Leia(salario_bruto)
    Se (INSS<=1.412) Ent�o
    Escreval("Al�quota de 7,5%")
    Sen�o
     Se (INSS>=1.412,01)E(INSS<=2.666,68) Ent�o
    Escreval("Al�quota de 9%")
    Sen�o
     Se (INSS>=2.666,69)E(INSS<=4.000,03) Ent�o
    Escreval("Al�quota de 12%")
    Sen�o
     Se (INSS>=4.000,04)E(INSS<=7.786,02) Ent�o
    Escreval("Al�quota de 7,5%")
    Sen�o
    // As al�quotas s�o de 7,5% para aqueles que ganham at� R$ 1.412,00;
    // de 9% para quem ganha entre R$ 1.412,01 at� R$ 2.666,68;
    //de 12% para os que ganham entre R$ 2.666,69 at� R$ 4.000,03;
    // e de 14% para quem ganha de R$ 4.000,04 at� R$ 7.786,02.
    Leia(INSS)
    Escreval("IR")
    // At� R$ 2.259,20	zero (Aliquota)	zero (dedu��o do IR)
    // De R$ 2.259,21 at� R$ 2.826,65	7,5%	R$ 169,44
    //De R$ 2.826,66 at� R$ 3.751,05	15%	R$ 381,44
    //De R$ 3.751,06 at� R$ 4.664,68	22,5%	R$ 662,77
    //Acima de R$ 4.664,68	27,5%	R$ 896,00
    Leia(IR)
    Escreval("Descontos Finais")
    Leia(descontos_total)
    Escreval("Sal�rio L�quido")
    Leia(salario_liquido)
    Fimse
    fimse
    fimse
    fimse
    fimse
    

Fimalgoritmo