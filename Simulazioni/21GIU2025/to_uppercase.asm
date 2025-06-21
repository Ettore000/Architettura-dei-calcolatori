# Title:	Trasformazione caratteri in uppercase (maiuscolo)
# FIlename:	to_uppercase.asm
# Author:	Ettore	Date: 21 giugno 2025
# Description:	scriviamo fino a 30 caratteri e il programma ci stampa tutto in uppercase
# Input:	fino a 30 caratteri da tastiera
# Output:	stampa in terminale i caratteri inseriti, tutti in uppercase

################# Data segment #############################################################
.data
prompt:		.asciz	"Inserisci una stringa: "
msg:		.asciz	"Stringa in maiuscolo: "
newline:	.asciz	"\n"
arr:		.space	31 # 30 + 1 (termine null \0)

################# Code segment #############################################################
.text
.globl main

main:
	la a0, prompt
	li a7, 4
	ecall
	
	la a0, arr
	li a1, 31 # Parametro della syscall 8, relativo alla lunghezza limite dell'input incluso il valore "\n"
	li a7, 8
	ecall
	
	la a0, newline
	li a7, 4
	ecall
	
	# Inizio controllo conversione
	la t0, arr
	li t1, 'a'
	li t2, 'z'
	
conversione_loop:
	lbu t3, 0(t0)
	
	beqz t3, fine
	
	blt t3, t1, avanti
	bgt t3, t2, avanti
	
	addi t3, t3, -32
	sb t3, 0(t0)
	
avanti:
	addi t0, t0, 1
	j conversione_loop
	
fine:
	# Stampa su terminale l'output
	la a0, msg
	li a7, 4
	ecall
	
	la a0, arr
	li a7, 4
	ecall
	
	# Exit program
	li a7, 10
	ecall
