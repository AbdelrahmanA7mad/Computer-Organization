
.data
msg: .asciiz "Enter Your Numbers : "
result: .asciiz "result is : "


li $t0,0
li $t1,0

.text

main:

loop:
    beq $t0 ,5 , end

    li $v0 ,4

    la $a0 ,msg 

    syscall

    li $v0 ,5
    syscall

    add $t1 , $t1 ,$v0
    
    add $t0,$t0,1

    j loop    

end:

li $v0 ,4
la $a0 , result

syscall

add $a0 , $t1 , 0

li $v0 ,1
syscall


exit:

li $v0 ,10
syscall