ALgoritmo "IMC"

Var
    Peso, Altura, IMC :real
    

Inicio
    Escreval("Qual o Peso?")
    Leia(Peso)
    Escreval("Qual a Altura?")
    Leia (Altura)
    IMC <- Peso/(altura*altura)
    Escreval("Qual a classifica��o?")
    Se (IMC <=   18.5) Ent�o
     Escreval("Abaixo do peso")
     Sen�o
        Se (IMC >= 18.6) E (IMC <= 24.9) Ent�o
        Escreval("Peso Ideal")
        Sen�o

            Se (IMC >= 25) E (IMC <= 29.9) Ent�o
            Escreval("Levemente acima do peso")
            Sen�o

                Se (IMC >= 30 )E (IMC <= 34.9) Ent�o
                Escreval("Obesidade Grau 1")
                Sen�o

                    Se (IMC >=35)E (IMC <=  39.9) Ent�o
                    Escreval("Obesidade Grau 2")
                    Sen�o
    
                        Se (IMC >=40) Ent�o
                        Escreval("Obesidade Grau 3")
                        Sen�o

                        Fimse

                    Fimse
                    
                Fimse
                
            Fimse
                
        Fimse
                
    Fimse
Fimalgoritmo
                
