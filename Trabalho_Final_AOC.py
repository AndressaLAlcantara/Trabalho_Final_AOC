#Declaração de Variáveis
n: int = 0
h: int = 0
impar: int=0
i: int= 0

#Início
n = int(input("Digite o número de termos na série: "))
if n <0:
    print("Digite um número maior que 0")
else:                                      #números ímpares multiplicados por 2 por n vezes 
    for i in range(n):
        impar = 2*i + 1
        h = h + (impar * 2)

    print("H =", h)

#Fim