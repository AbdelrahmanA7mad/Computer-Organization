
fact:
li $t0 ,1 # counter
li $t1 ,1 # fact
for:
    bgt  $t0, $a0 ,endfor
    mul $t1 , $t1 ,$t0
    addi $t0 ,$t0 ,1
    j for
endfor:
    move $v0 , $t1

returnFact:
jr $ra

.data

msg: .asciiz "Enter Number : "

.text
main:
    addi $sp , $sp , -4
    sw $ra , 0($sp)

    li $v0 ,4
    la $a0 , msg
    syscall

    li $v0 , 5
    syscall

    move $a0,$v0

    jal fact

    move $a0 ,$v0

    li $v0 , 1
    syscall

returnMain:
    lw $ra , 0($sp)
    addi $sp , $sp , 4
    jr $ra
