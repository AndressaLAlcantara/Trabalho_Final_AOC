.data
	msg1: .asciiz "\nDigite o numero de termos na serie: "
	msg2: .asciiz "\nDigite um número maior que 0: "
	msg3: .asciiz "\nH = "
.text
main:
	#Digitar o N termos
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0	
	
	#Verificar se N<=0
	bltz $t0, erro
	
	li $t1, 0
	la $t2, 0

for:
	#Se i>=n, termina
	bge $t2, $t0, fim_for
	
	#Impar = 2*i+1
	mul $t3, $t2, 2
	add $t3, $t3, 1
	
	#impar *2
	mul $t4, $t3, 2
	
	#h = h + (impar *2)
	add $t1, $t1, $t4
	
	#i++
	add $t2, $t2, 1
	j for
	
fim_for:
	
	#Mostrar "H = "
	li $v0, 4
	la $a0, msg3
	syscall
	
	#Mostrar valor de H
	li $v0, 1
	move $a0, $t1
	syscall
	
	j fim

erro:
	#Mostrar mensagem de erro
	li $v0, 4
	la $v0, msg2
	syscall
	
fim:
	#Encerrar
	li $v0, 10
	syscall
	
