.data
msg_one: .asciiz "\nChoose a Number \n"
msg_two: .asciiz "1 : Add\n"
msg_three: .asciiz "2 : subtract\n"
msg_four: .asciiz "3 : Multiply\n"
msg_fifth: .asciiz "4 : Divison\n"
msg_six: .asciiz "5 : Exit\n"
first_number: .asciiz "Enter First Number : "
second_number: .asciiz "Enter Second Number : "
result: .asciiz "The Result is : "
.text
main:
while:
    la $a0,msg_one
    li $v0,4
        syscall
###############################
    la $a0,msg_two
    li $v0,4
        syscall
###############################
    la $a0,msg_three
    li $v0,4
        syscall
###############################
    la $a0,msg_four
    li $v0,4
        syscall
###############################
    la $a0,msg_fifth
    li $v0,4
        syscall
###############################
    la $a0,msg_six
    li $v0,4
        syscall
###############################
    li $v0,5
        syscall
    move $t0,$v0
li $t1,1
li $t2,2
li $t3,3
li $t4,4
li $t5,5
switch:
    beq $t0,$t1,case_one

    beq $t0,$t2,case_two

    beq $t0,$t3,case_three
    
    beq $t0,$t4,case_four
    
    beq $t0,$t5,case_five
case_one:

    la $a0,first_number
    li $v0,4
            syscall
    li $v0,5
            syscall
    move $s0,$v0    
    la $a0,second_number
    li $v0,4
            syscall
    li $v0,5
            syscall
    move $s1,$v0 
    la $a0,result
    li $v0,4
            syscall
    add $s3,$s0,$s1
    move $a0,$s3
    li $v0,1
            syscall

    j endswitch
case_two:
   la $a0,first_number
    li $v0,4
            syscall
    li $v0,5
            syscall
    move $s0,$v0    
    la $a0,second_number
    li $v0,4
            syscall
    li $v0,5
            syscall
    move $s1,$v0 
    la $a0,result
    li $v0,4
            syscall
    sub $s3,$s0,$s1
    move $a0,$s3
    li $v0,1
            syscall

    j endswitch
case_three:
   la $a0,first_number
    li $v0,4
            syscall
    li $v0,5
            syscall
    move $s0,$v0    
    la $a0,second_number
    li $v0,4
            syscall
    li $v0,5
            syscall
    move $s1,$v0 
    la $a0,result
    li $v0,4
            syscall

    mult $s0,$s1
    mflo $s0
    
    move $a0,$s0
    li $v0,1
            syscall

    j endswitch
case_four:
   la $a0,first_number
    li $v0,4
            syscall
    li $v0,5
            syscall
    move $s0,$v0    
    la $a0,second_number
    li $v0,4
            syscall
    li $v0,5
            syscall
    move $s1,$v0 
    la $a0,result
    li $v0,4
            syscall

    div $s0,$s1

    mflo $s0
    
    move $a0,$s0
    li $v0,1
            syscall
    j endswitch
case_five:
j exit
endswitch:
j while
endwhile:
exit :
    li $v0,10
syscall