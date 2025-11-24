

.data

msgone: .asciiz "Enter First Number : "
msgtwo: .asciiz "Enter Second Number : "
result: .asciiz "Result is : "



.text
main:
li $v0,4
la $a0 , msgone
syscall
li $v0 ,5
syscall
move $t0 , $v0  


li $v0,4
la $a0 , msgtwo
syscall

li $v0 ,5
syscall
move $t1 , $v0  

li $v0 , 4
la $a0 ,result
syscall

add $a0 ,$t1 ,$t0
li $v0 , 1
syscall

exit:
li $v0,10
syscall