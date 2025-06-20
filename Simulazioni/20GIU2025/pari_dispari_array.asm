# Title:	Simulazione del 20 giugno 2025 sui numeri pari e dispari all'interno di un array
# Filename:	pari_dispari_array.asm
# Author:	Date:	
# Description:	5 numeri in un array presi da tastiera, accetta solo numeri pari, si fa' la somma dei numeri
# Input:	5 numeri interi pari
# Output:	somma dei 5 numeri interi pari

############ Data segment ######################################################################
.data
prompt1:	.asciz	"Inserisci un numero pari per arr["
prompt2:	.asciz	"]: "
nonpari:	.asciz	"Non è pari. Riprova."
sommamsg:	.asciz	"La somma è: "
newline:	.asciz	"\n"

.align 2
arr:		.space 20 #5*4=20

############ Code segment ######################################################################
.text
.globl main

main:
	la a0, arr
	call carica_array_pari
	
	la a0, arr
	call somma_array
	
	la a0, sommamsg
	li a7, 4
	ecall
	
	mv a0, a2
	li a7, 1
	ecall
	
	la a0, newline
	li a7, 4
	ecall

	li a7, 10
	ecall

############ carica_array_pari #################################################################
carica_array_pari:
	mv t0, a0
	li t1, 0
	
riempi_loop:
	la a0, prompt1
	li a7, 4
	ecall
	
	mv a0, t1
	li a7, 1
	ecall
	
	la a0, prompt2
	li a7, 4
	ecall
	
	li a7, 5
	ecall
	
	andi t4, a0, 1
	bnez t4, riprova
	
	slli t2, t1, 2
	add t2, t2, t0
	sw a0, 0(t2)
	
	addi t1, t1, 1
	li t3, 5
	blt t1, t3, riempi_loop
	
	ret
	
riprova:
	la a0, nonpari
	li a7, 4
	ecall
	
	la a0, newline
	li a7, 4
	ecall
	
	j riempi_loop
	
	

############ somma_array #######################################################################
somma_array:
	mv t0, a0
	li t1, 0 # Contatore
	
	li t2, 0 # Sommatoria
	
somma_loop:
	slli t3, t1, 2
	add t3, t3, t0
	lw t4, 0(t3)
	
	add t2, t2, t4
	
	addi t1, t1, 1
	li t5, 5
	blt t1, t5, somma_loop
	
	mv a2, t2
	
	ret