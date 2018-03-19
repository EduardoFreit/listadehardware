.data

a: .word # $a0
b: .word # $a1
i: .word 9 #t3

.text


main:



lw $a0,a #base do array A
lw $a1,b # Base do Array B
la $t1,($a0) # t1 apontando para a0
la $t2,($a1) # t2 apontando para a1 
lw $t3,i ##carrega o dado de i(memória) para t3(registrador)
#add $t1,$t1,32 #adicionando 32bits no endereço de t1
add $t2,$t2,32 #Adicionando 32bits no endereço de t2 b[1]

volta:
bne $t3,$zero,loop # se i !=0 , então vá para a label loop
beq $t3,$zero,fim # se i==0, entao termine

loop:
add $t4,$t2,$t1 ## t4 = A[0] + B[1]
add $t1,$t1,32 #adicionando 32bits no endereço de t1, A[1]
addi $t1,$t4,0 #A[1] = A[0] + B[1]
addi $t3,$t3,-1 #decrementando o i

j volta

fim:

