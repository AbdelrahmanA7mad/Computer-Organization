

.data

msgone: .asciiz "Enter Your Number : "
pos: .asciiz "Number is Positive"
negt: .asciiz "Number is Negtive"

.text

main:

li $v0,4
la $a0 , msgone

syscall

li $v0 ,5 
syscall

blez $v0 negtive

li $v0,4
la $a0 , pos
syscall

j end



negtive:

li $v0,4
la $a0 , negt
syscall


end:

exit:

li $v0 ,10

syscall