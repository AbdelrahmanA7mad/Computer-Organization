bin_func:

    li $t0 ,8
    li $t1 ,1

    move $t2 ,$a0
for:
    beqz $t0 ,endfor
    addi $t0,$t0 ,-1

    sllv $t1, $t1 ,$t0

    and $a0 , $t2 ,$t1
if: 
    beqz $a0 , endif
    li $a0,1
endif:  
    li $v0,1
    syscall
    li $t1 ,1
    j for
endfor:
returnBin:

jr $ra

.data

num: .word 22


.text

main:

    addi $sp,$sp,-4
    sw $ra , 0($sp)


    la $s0 ,num
    lw $a0 , 0($s0)

    jal bin_func



returnMain:
    lw $ra , 0($sp)
    addi $sp,$sp,4
jr $ra
