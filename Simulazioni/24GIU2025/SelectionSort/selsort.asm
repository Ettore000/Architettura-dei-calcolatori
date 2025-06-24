# Title:	Selection Sort
# Filename:	selsort.asm
# Author:	Ettore	Date:	24GIU2025
# Description:	Applicazione dell'algoritmo di ordinamento selection sort
# Input:	Array di 10 interi
# Output:	Stampa l'array in input, riordina, stampa l'array ordinato, un numero per riga

############## Data segment ####################################################################
.data
msg:		.asciz	"(ordinamento in corso...)"
newline:	.asciz	"\n"

.align 2
arr:		.word	5, 3, 8, 4, 2, 7, 1, 9, 6, 0
len:		.word	10

############## Code segment ####################################################################
.text
.globl main

main:
	la s0, arr # Puntatore arr
	
	la t0, len # Puntatore len
	lw s1, 0(t0) # Valore len offset=0, valore=s1 (una word)
	
	li s2, 0 # Contatore
	
print_arr_start:
	bge s2, s1, sort_arr_loop
	
	slli t1, s2, 2 # Offset t1=len*2^2
	add t2, s0, t1 # Indirizzo elemento
	
	lw a0, 0(t2)
	li a7, 1
	ecall
	
	la a0, newline
	li a7, 4
	ecall
	
	addi s2, s2, 1
	j print_arr_start
	
############## Selection Sort ##################################################################
# Selection Sort: due loop annidati
sort_arr_loop:
	li s2, 0
	
	la a0, msg
	li a7, 4
	ecall
	
	la a0, newline
	li a7, 4
	ecall
	
outer_loop:
	addi t0, s1, -1 # t0=len=10
	bge s2, t0, print_sorted
	
	mv t1, s2 # i
	addi t2, t1, 1 # j
	
inner_loop:
	bge t2, s1, swap_check
	
	slli t3, t2, 2
	add t4, s0, t3
	lw t5, 0(t4) # t5 = arr[j]
	
	slli t3, t1, 2
   	add t4, s0, t3
    	lw t6, 0(t4) # t6 = arr[i]
	
    	blt t5, t6, update_min
   	 j skip_update

update_min:
    mv t1, t2 # min_index = j

skip_update:
    addi t2, t2, 1
    j inner_loop
	
swap_check:
	beq s2, t1, skip_swap
	
	# salva arr[i] in t5
	slli t3, s2, 2          # t3 = offset di i
	add t4, s0, t3          # t4 = &arr[i]
	lw t5, 0(t4)            # t5 = arr[i]
	
	# min index in questo caso è j
	# salva arr[min_index] in t6
	slli t3, t1, 2          # t3 = offset di min_index
	add t6, s0, t3          # t6 = &arr[min_index]
	lw t3, 0(t6)            # t3 = arr[min_index]
	
	# swap
	sw t3, 0(t4)            # arr[i] = arr[min_index]
	sw t5, 0(t6)            # arr[min_index] = arr[i]
	
skip_swap:
	addi s2, s2, 1
	j outer_loop
	
print_sorted:
	li s2, 0
	
print_arr_end:
    bge s2, s1, fine
    slli t1, s2, 2
    add t2, s0, t1
    lw a0, 0(t2)
    li a7, 1
    ecall

    la a0, newline
    li a7, 4
    ecall

    addi s2, s2, 1
    j print_arr_end

fine:
    li a7, 10
    ecall
