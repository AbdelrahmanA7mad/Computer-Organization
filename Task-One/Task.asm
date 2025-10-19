.data   



name: .asciiz "Name : Abdelrahman Ahmed Adel "       
id: .asciiz "Id : 20812022100592"       
course: .asciiz "Course : Computer Organization"       
newline : .asciiz "\n"


.text 

main:
    li $v0,4
    la $a0,name
    syscall
    li $v0, 4
    la $a0, newline
    syscall
    li $v0,4
    la $a0,id
    syscall
    li $v0, 4
    la $a0, newline
    syscall
    li $v0,4
    la $a0,course
    syscall
    li $v0, 4
    la $a0, newline
    syscall
    li $v0,10
    syscall