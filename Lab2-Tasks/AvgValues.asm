.data

msg_one: .asciiz "Enter First Number \n"
msg_two: .asciiz "Enter Second Number \n"
msg_three: .asciiz "Enter Third Number \n"
msg_four: .asciiz "Enter Fourth Number \n"
result: .asciiz "Avg Value is \n"
new_line: .asciiz "\n"


.text


main:
    la $a0,msg_one
    li $v0,4
    syscall
    li $v0,5
    syscall

    
    move $t0,$v0
    la $a0,msg_two
    li $v0,4
    syscall
    li $v0,5
    syscall
    
    move $t1,$v0
    la $a0,msg_three
    li $v0,4
    syscall
    li $v0,5
    syscall

    move $t2,$v0

    la $a0,msg_four
    li $v0,4
    syscall
    li $v0,5
syscall

    move $t3,$v0

    la $a0,result
    li $v0,4
    syscall
    add $t4 ,$t0,$t1
    add $t5 ,$t2,$t3
    add $t6,$t4,$t5

    li $t7,4

    div $t6,$t7

    mflo $t6

    


    move $a0,$t6
    li $v0,1
    syscall

exit:
    li $v0,10
syscall