# Title:	Serie di Fibonacci
# FIlename:	fibonacci.asm
# Author:	Ettore	Date: 21 giugno 2025
# Description:	Genera una serie di Fibonacci con iterazioni personalizzate
# Input:	Numero intero da tastiera che specifica quante serie di Fibonacci generare
# Output:	N serie di Fibonacci stampate su terminale

############ Data segment ##################################################################
.data
prompt:		.asciz	"Specifica quante serie di Fibonacci: "
msg:		.asciz	"Risultato: "
newline:	.asciz	"\n"

############ Code segment ##################################################################
.text
.globl main

main:
	la a0, prompt
	li a7, 4
	ecall
	
	li a7, 5
	ecall
	
	mv s0, a0
	
	la a0, newline
	li a7, 4
	ecall
	
	li t0, 0
	ble s0, t0, fine # Zero o negativi
	
	li a0, 0
	li a7, 1
	ecall
	
	la a0, newline
	li a7, 4
	ecall
	
	li t1, 1
	beq s0, t1, fine # Uno
	
	li a0, 1
	li a7, 1
	ecall
	
	la a0, newline
	li a7, 4
	ecall
	
	li t2, 2
	beq s0, t2, fine # Due
	
	li s1, 2 # Contatore
	
fibonacci_loop:
	bge s1, s0, fine
	
	add t2, t0, t1
	
	mv a0, t2
	li a7, 1
	ecall
	
	la a0, newline
	li a7, 4
	ecall
	
	mv t0, t1
	mv t1, t2
	
	addi s1, s1, 1
	j fibonacci_loop
	
fine:
	li a7, 10
	ecall