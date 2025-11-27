.data
prompt: .asciiz "Enter n: "
msg: .asciiz "Fibonacci = "

.text
main:
    li $v0,4
    la $a0,prompt
    syscall

    li $v0,5
    syscall
    move $a0,$v0

    jal fib
    move $t0,$v0

    li $v0,4
    la $a0,msg
    syscall

    li $v0,1
    move $a0,$t0
    syscall

    li $v0,10
    syscall

fib:
    addi $sp,$sp,-12
    sw $ra,0($sp)
    sw $a0,4($sp)

    blt $a0,2,base

    addi $a0,$a0,-1
    jal fib
    move $t1,$v0

    lw $a0,4($sp)
    addi $a0,$a0,-2
    jal fib

    add $v0,$v0,$t1
    j endfib

base:
    move $v0,$a0

endfib:
    lw $ra,0($sp)
    addi $sp,$sp,12
    jr $ra
