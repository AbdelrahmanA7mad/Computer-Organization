.data
.text

funk:
    mul $t1, $a0, -1 
    and $t2, $t1, 1    
    beqz $t2, else      

    j endif            

else:
    move $a0, $t1       
endif:
move $v0 ,$a0
    jr $ra              

main:
    li $a0, -13
    jal funk            

    li $v0 ,1
    syscall

exit:

li $v0,10
syscall
