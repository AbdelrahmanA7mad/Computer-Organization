.data
msg_one: .asciiz "Enter Your Numbers : "
result: .asciiz "The Result is : "
new_line: .asciiz "\n"
.text
main:

    la $a0,msg_one
    li $v0,4
            syscall
li $t0,0 #count
li $t1,0 # result
while:

    li $v0,5
    syscall
    beq $v0,$zero,endwhile
    move $t2,$v0
    add $t0,$t0,1
    add $t1,$t1,$t2
    j while
endwhile:

    la $a0,result
    li $v0,4
         syscall
    move $a0,$t1
    div $a0,$t0
    mflo $a0
    li $v0,1
    syscall
exit:
    li $v0,10
syscall