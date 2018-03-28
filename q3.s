 	.data
hor:	.word	1
min:	.word	1
sec:	.word	30
totSec:	.word	0



 .text   
        .globl	main            
        
main:	lw $8,hor	
	lw $9,min
	lw $10,sec
Horas:
	addi $11, $11, 3600
	addi $8, $8, -1
	bne $8,$0,Horas
Min:
	addi $12, $12, 60
	addi $9, $9, -1
	bne $9,$0,Min	 
Fim:		
	add $10, $10, $11
	add $10, $10, $12
	sw $10,	totSec
