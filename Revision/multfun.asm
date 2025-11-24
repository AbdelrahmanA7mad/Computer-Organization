

.data

x: .word 41

y: .word 5



.text

            multfun:
            mul $v0 , $a0 ,$a1
            returnMult:
            jr $ra
main:
addi $sp , $sp , -4
sw $ra , 0($sp)


la $s0 , x


lw $a0 , 0($s0)
lw $a1 , 4($s1)


    jal multfun

    move $a0 ,$v0
    li $v0 , 1
    syscall
returnMain:
lw $ra ,0($sp)
addi $sp ,$sp ,4
jr $ra