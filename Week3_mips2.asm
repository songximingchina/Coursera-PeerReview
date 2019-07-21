.data 
	buffer:	.space 100
	succ:	.asciiz "Success! Location:"
	fail:	.asciiz "Fail!\n"
	str1:	.asciiz  "input string\n"
	str2:	.asciiz "input char\n"
	endline:	.asciiz "\r\n"
	
	
.text 
	.globl main
main:
	li  $v0, 4
	la  $a0, str1	#提示输入字符串
	syscall 
	
	la  $a0, buffer # a0 = 缓冲区地址
	li  $a1, 50
	li  $v0, 8
	syscall 
loop:	
	li  $v0, 4
	la  $a0, str2  #提示输入字符
	syscall 
	
	li   $v0, 12
	syscall
	move $t3, $v0
	
	li   $v0, 4
	la   $a0, endline
	syscall 
	move $v0, $t3
	
	# is "?"
	sub  $t4, $v0, 63
	beqz $t4, end
	la   $t0, buffer
	li   $t1, 1
	
find:
	lb   $t2, ($t0)
	beq  $t2, 0, notfind
	beq  $t2, $v0, findit
	add  $t1, $t1, 1
	add  $t0, $t0, 1
	b find
	
findit:
	li   $v0, 4
	la   $a0, succ
	syscall
	li   $v0, 1
	move $a0, $t1
	syscall
	li   $v0, 4
	la   $a0, endline
	syscall
	b loop
	
notfind:
	li   $v0, 4
	la   $a0, fail
	syscall
	b loop
	
end:
	li   $v0, 10
	syscall