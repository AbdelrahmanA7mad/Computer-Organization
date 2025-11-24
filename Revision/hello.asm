
.data

Name: .asciiz "Abdelrahman Ahmed Adel \n"
id: .asciiz "3040\n"
course: .asciiz "s\n"


.text
main:
li $v0 ,4 
la $a0 , Name
syscall
#######################

li $v0 ,4 
la $a0 , id
syscall
#######################

li $v0 ,4 
la $a0 , course
syscall
#######################
li $v0 ,10
syscall