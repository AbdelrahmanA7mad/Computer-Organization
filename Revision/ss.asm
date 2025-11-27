main:
li $s1, 16
addi $sp, $sp, -8
sw $ra, 0($sp)
sw $s1, 4($sp)
jal myFunc
lw $s1, 4($sp)
lw $ra, 0($sp)
addi $sp, $sp, 8
jr $ra