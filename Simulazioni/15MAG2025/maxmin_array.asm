# Title:	Esame del 16 maggio 2025 in Architettura Dei Calcolatori
# Filename:	maxmin_array.asm
# Author:	Ettore Antonio Panasia 863002805   Date: 19 giugno 2025
# Description:	Inserire 5 valori in un array, trovare il massimo e il minimo
# Input:	5 numeri interi da tastiera
# Output:	Il massimo e il minimo tra i numeri inseriti

################## Data segment ##################################################

.data
prompt:		.asciz	"Dammi il valore di arr["
duepunti:	.asciz	"]: "
maxmsg:		.asciz	"Il massimo è: "
minmsg:		.asciz	"Il minimo è: "
newline:	.asciz	"\n"

.align 2				# allineamento a word boundary per evitare eccezioni
arr:		.space	20		# 5 elementi interi = 5*4 byte

################## Code segment ##################################################

.text
.globl main

main:
	la a0, arr
	call riempi_array		# Riempi array con input
	
	la a0, arr
	call trova_maxmin		# Trova max e min e mette in a2 e a3
	
	# Stampa massimo
	la a0, maxmsg
	li a7, 4
	ecall
	
	mv a0, a2
	li a7, 1
	ecall
	
	la a0, newline
	li a7, 4
	ecall
	
	# Stampa minimo
	la a0, minmsg
	li a7, 4
	ecall
	
	mv a0, a3
	li a7, 1
	ecall
	
	la a0, newline
	li a7, 4
	ecall
	
	# EXIT
	li a7, 10
	ecall

################## riempi_array ##################################################

riempi_array:
	mv t0, a0		# t0 = base address di arr
	li t1, 0		# i = 0 (contatore)

loop_riempimento:
	# Stampa prompt
	li a7, 4
	la a0, prompt
	ecall
	
	li a7, 1
	mv a0, t1
	ecall
	
	li a7, 4
	la a0, duepunti
	ecall
	
	# Leggi valore
	li a7, 5
	ecall
	
	slli t2, t1, 2		# offset = i * 4
	add t2, t2, t0		# indirizzo arr[i]
	sw a0, 0(t2)		# salva valore in arr[i]
	
	addi t1, t1, 1		# i++
	li t3, 5
	blt t1, t3, loop_riempimento
	
	ret

################## trova_maxmin ##################################################

trova_maxmin:
	mv t0, a0		# base address arr
	li t1, 0		# i = 0

	lw t2, 0(t0)		# t2 = max iniziale
	lw t3, 0(t0)		# t3 = min iniziale

loop_ricerca:
	slli t4, t1, 2		# offset = i * 4
	add t5, t4, t0		# indirizzo arr[i]
	lw t6, 0(t5)		# t6 = arr[i]
	
	bge t2, t6, check_min
	mv t2, t6		# nuovo max

check_min:
	ble t3, t6, next
	mv t3, t6		# nuovo min

next:
	addi t1, t1, 1
	li t4, 5
	blt t1, t4, loop_ricerca
	
	mv a2, t2		# max in a2
	mv a3, t3		# min in a3
	
	ret
