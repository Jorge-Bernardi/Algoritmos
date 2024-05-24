ALgoritmo "IMC"

Var
    Peso, Altura, IMC :real
    

Inicio
    Escreval("Qual o Peso?")
    Leia(Peso)
    Escreval("Qual a Altura?")
    Leia (Altura)
    IMC <- Peso/(altura*altura)
    Escreval("Qual a classificação?")
    Se (IMC <=   18.5) Então
     Escreval("Abaixo do peso")
     Senão
        Se (IMC >= 18.6) E (IMC <= 24.9) Então
        Escreval("Peso Ideal")
        Senão

            Se (IMC >= 25) E (IMC <= 29.9) Então
            Escreval("Levemente acima do peso")
            Senão

                Se (IMC >= 30 )E (IMC <= 34.9) Então
                Escreval("Obesidade Grau 1")
                Senão

                    Se (IMC >=35)E (IMC <=  39.9) Então
                    Escreval("Obesidade Grau 2")
                    Senão
    
                        Se (IMC >=40) Então
                        Escreval("Obesidade Grau 3")
                        Senão

                        Fimse

                    Fimse
                    
                Fimse
                
            Fimse
                
        Fimse
                
    Fimse
Fimalgoritmo
                
