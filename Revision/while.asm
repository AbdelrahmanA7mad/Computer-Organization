

.data

li $t0 ,0

.text

main:

while:
    beq $t0 , 11 , end

    move $a0 , $t0
    li $v0 ,1
    syscall

    add $t0 ,$t0, 1

    j while


end:

exit:
    li $v0 ,10
    syscall