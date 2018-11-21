#---------------------------------------------------------------------
# LSDI 2013/14 - FEUP
# Lab 7 (Jan. 2014)
# Ver. 2.1
#---------------------------------------------------------------------

	.data
Nmax:	.word	100
N:      .word	10   
array:	.word   0 : 100
strSum: .asciiz "Somat�rio = "
strAvg: .asciiz "M�dia = "
strMax: .asciiz "M�ximo = "
strSeq: .asciiz "Dim. maior subsequ�ncia crescente = "
space:	.asciiz " "
crlf:	.asciiz "\n"

	.text
main:   li  $v0, 40	# set seed
	li  $a0, 0
	syscall

loop:   jal menu
	bne $v0, 1, main1
	jal readN
	j   loop

main1:  bne $v0, 2, main2
	jal fill
	jal print
	j   main

main2:  bne $v0, 3, main3
	jal rnd
	jal print
	j   main

main3:  bne $v0, 4, main4
	jal print
	j   main

main4:  bne $v0, 5, main5
	la  $a0, N
	lw  $a0, ($a0)
	la  $a1, array

	jal sum

	move $a0, $v0
	la  $v0, strSum
	jal result

	j   main

main5:  bne $v0, 6, main6
	la  $a0, N
	lw  $a0, ($a0)
	la  $a1, array

	jal avg

	move $a0, $v0
	la  $v0, strAvg
	jal result

	j   main

main6:  bne $v0, 7, main7
	la  $a0, N
	lw  $a0, ($a0)
	la  $a1, array

	jal max

	move $a0, $v0
	la  $v0, strMax
	jal result

	j   main

main7:  bne $v0, 8, main8
	la  $a0, N
	lw  $a0, ($a0)
	la  $a1, array

	jal inv    # N�o imprime resultado

	j   main

main8:  bne $v0, 9, main9
	la  $a0, N
	lw  $a0, ($a0)
	la  $a1, array

	jal dimS

	move $a0, $v0
	la  $v0, strSeq
	jal result

	j   main

main9:  beq $v0, 0, main10
	jal err
	j   main	

main10:  li  $v0, 10
	syscall

#================================================================================================
	.data
menu0:	.asciiz	"------ MENU -------------------------------------------------------------------\n"
menu1:	.asciiz	"      Vetor: 1 - Dimens�o   2 - Preencher  3 - Aleat�rio     4 - Imprimir\n"
menu2:	.asciiz	"  Opera��es: 5 - Somat�rio  6 - M�dia      7 - Valor m�ximo  8 - Inverte\n"
menu3:	.asciiz	"             9 - Maior subsequ�ncia crescente                0 - Terminar\n"
menu4:	.asciiz	"Introduza a sua op��o: "
#================================================================================================

	.text
menu:   li  $v0, 4
	la  $a0, menu0
	syscall
	la  $a0, menu1
	syscall
	la  $a0, menu2
	syscall
	la  $a0, menu3
	syscall
	la  $a0, menu4
	syscall

	li  $v0, 5
	syscall

	jr  $ra

#---------------------------------------------------------------------
	.data
askN:	.asciiz	"Introduza o n�mero de elementos do vetor: "
	.text
readN:  li  $v0, 4
	la  $a0, askN
	syscall

	li  $v0, 5
	syscall
	sw  $v0, N

	jr  $ra

#---------------------------------------------------------------------

result: move $t0, $a0
	move $a0, $v0
	li   $v0, 4
	syscall

	li   $v0, 1
	move $a0, $t0
	syscall

	li   $v0, 4
	la   $a0, crlf
	syscall

	jr   $ra

#---------------------------------------------------------------------
	.data
strB:	.asciiz "� elemento do vetor = "
	.text
fill:   la   $t2, array
	la   $t0, N
	lw   $t0, ($t0)
	li   $t1, 0
fill2:  beq  $t0, $t1, fill1
	addi $t1, $t1, 1
	li   $v0, 1
	move $a0, $t1
	syscall

	li   $v0, 4
	la   $a0, strB
	syscall

	li   $v0, 5
	syscall
	sw   $v0, ($t2)
		
	addi $t2, $t2, 4

	j    fill2

fill1:  jr   $ra

#---------------------------------------------------------------------

rnd:    la  $t2, array
	la  $t0, N
	lw  $t0, ($t0)
	li  $t1, 0

rnd2:   beq $t0, $t1, rnd1
	li  $v0, 42
	li  $a0, 0
	li  $a1, 100
	syscall

	sw  $a0, ($t2)
		
	addi $t2, $t2, 4
	addi $t1, $t1, 1

	j    rnd2

rnd1:   jr   $ra

#---------------------------------------------------------------------
	.data
strA:	.asciiz "Vetor = "
	.text
print:  li  $v0, 4
	la  $a0, strA
	syscall

	la  $t2, array

	la  $t0, N
	lw  $t0, ($t0)
	li  $t1, 0
print2: beq $t0, $t1, print1
	li  $v0, 1
	lw  $a0, ($t2)
	syscall

	li  $v0, 4
	la  $a0, space
	syscall
		
	addi $t2, $t2, 4
	addi $t1, $t1, 1

	j    print2

print1: li  $v0, 4
	la  $a0, crlf
	syscall

	jr  $ra

#---------------------------------------------------------------------

	.data
errStr:	.asciiz "Op��o inv�lida!\n"
	.text
err:    li  $v0, 4
	la  $a0, errStr
	syscall

	jr  $ra

#---------------------------------------------------------------------
# sum - c�lculo do somat�rio dos elementos de um vetor
#
# Argumentos:
#	$a0 - dimens�o do vetor
#	$a1 - endere�o base do vetor
# Valor retornado
#	$v0 - somat�rio
#---------------------------------------------------------------------

sum:	# coloque o seu c�digo a partir daqui...

	jr  $ra    # para retornar ao programa que chamou esta rotina


#---------------------------------------------------------------------
# avg - c�lculo da m�dia aritm�tica dos elementos de um vetor
#
# Argumentos:
#	$a0 - dimens�o do vetor
#	$a1 - endere�o base do vetor
# Valor retornado
#	$v0 - m�dia
# Nota: A m�dia dever� ser arredondada para o inteiro mais pr�ximo
#---------------------------------------------------------------------

avg:	# coloque o seu c�digo a partir daqui...

	jr $ra


#---------------------------------------------------------------------
# max - determina��o do valor m�ximo dos elementos de um vetor
#
# Argumentos:
#	$a0 - dimens�o do vetor
#	$a1 - endere�o base do vetor
# Valor retornado
#	$v0 - valor m�ximo
#---------------------------------------------------------------------

max:	# coloque o seu c�digo a partir daqui...

	jr $ra


#---------------------------------------------------------------------
# inv - inverte a ordem dos elementos de um vetor
#
# Argumentos:
#	$a0 - dimens�o do vetor
#	$a1 - endere�o base do vetor
# Valor retornado
#	nenhum (ap�s a opera��o, $a1 tem o endere�o base do vetor modificado)
#---------------------------------------------------------------------

inv:	# coloque o seu c�digo a partir daqui...

	jr $ra


#---------------------------------------------------------------------
# dimS - determina��o da dimens�o da maior subsequ�ncia crescente de elementos de um vetor
#
# Argumentos:
#	$a0 - dimens�o do vetor
#	$a1 - endere�o base do vetor
# Valor retornado
#	$v0 - dimens�o da subsequ�ncia
#---------------------------------------------------------------------

dimS:	# coloque o seu c�digo a partir daqui...
      
	jr $ra

#---------------------------------------------------------------------
