.data
	A:	.asciiz "Alpha "	#以下各串都是输入所对应字符（区分大小写）时所要输出的串
	B:	.asciiz "Bravo "	#举个例子，比如我们要是输入一个B，我们希望程序输出的是Bravo
	C:	.asciiz "China "
	D:	.asciiz "Delta "
	E:	.asciiz "Echo "
	F:	.asciiz "Foxtrot "
	G:	.asciiz "Golf "
	H:	.asciiz "Hotel "
	I:	.asciiz "India "
	J:	.asciiz "Juliet "
	K:	.asciiz "Kilo "
	L:	.asciiz "Lima "
	M:	.asciiz "Mary "
	N:	.asciiz "November "
	O:	.asciiz "Oscar "
	P:	.asciiz "Paper "
	Q:	.asciiz "Quebec "
	R:	.asciiz "Research "
	S:	.asciiz "Sierra "
	T:	.asciiz "Tango "
	U:	.asciiz "Uniform "
	V:	.asciiz "Victor "
	W:	.asciiz "Whisky "
	X:	.asciiz "X-ray "
	Y:	.asciiz "Yankee "
	Z:	.asciiz "Zulu "
        a:	.asciiz "alpha "	
	b:	.asciiz "bravo "
	c:	.asciiz "china "
	d:	.asciiz "delta "
	e:	.asciiz "echo "
	f:	.asciiz "foxtrot "
	g:	.asciiz "golf "
	h:	.asciiz "hotel "
	i:	.asciiz "india "
	j:	.asciiz "juliet "
	k:	.asciiz "kilo "
	l:	.asciiz "lima "
	m:	.asciiz "mary "
	n:	.asciiz "november "
	o:	.asciiz "oscar "
	p:	.asciiz "paper "
	q:	.asciiz "quebec "
	r:	.asciiz "research "
	s:	.asciiz "sierra "
	t:	.asciiz "tango "
	u:	.asciiz "uniform "
	v:	.asciiz "victor "
	w:	.asciiz "whisky "
	x:	.asciiz "x-ray "
	y:	.asciiz "yankee "
	z:	.asciiz "zulu "
	num1:	.asciiz "First "
	num2:	.asciiz "Second "
	num3:	.asciiz "Third "
	num4:	.asciiz "Fourth "
	num5:	.asciiz "Fifth "
	num6:	.asciiz "Sixth "
	num7:	.asciiz "Seventh "
	num8:	.asciiz "Eighth "
	num9:	.asciiz "Ninth "
	num0:	.asciiz "zero "
	name_and_id:	.asciiz "\r\nname: Ximing Song"	#作者的姓名

        .text
        .globl main
main:   li $v0, 12		#程序开始的地方
        syscall			#输入一个字符，判断其是否为'?'，若是，则进入结束处理模块
        beq  $v0, '?', stop
        
next_a: bne $v0, 'a', next_b	#依次判断该字符是否是a,b,c,……,A,B,C,……,1,2,3,……,9,0。若是，则输出对应的串，跳转到main，进行下一次输入与判断，若都不是，则输出'*'，跳转到main，进行下一次输入与判断。
        li $v0, 4		#下同，不再赘述
        la $a0, a
        syscall
        j main
next_b: bne $v0, 'b', next_c	#举个例子，比如我们检测到的是b，则我们跳到b对应的部分程序并输出bravo，如果不是b则进入next_c并检测是不是c
        li $v0, 4
        la $a0, b
        syscall
        j main
next_c: bne $v0, 'c', next_d
        li $v0, 4
        la $a0, c
        syscall
        j main
next_d: bne $v0, 'd', next_e
        li $v0, 4
        la $a0, d
        syscall
        j main
next_e: bne $v0, 'e', next_f
        li $v0, 4
        la $a0, e
        syscall
        j main
next_f: bne $v0, 'f', next_g
        li $v0, 4
        la $a0, f
        syscall
        j main
next_g: bne $v0, 'g', next_h
        li $v0, 4
        la $a0, g
        syscall
        j main
next_h: bne $v0, 'h', next_i
        li $v0, 4
        la $a0, h
        syscall
        j main
next_i: bne $v0, 'i', next_j
        li $v0, 4
        la $a0, i
        syscall
        j main
next_j: bne $v0, 'j', next_k
        li $v0, 4
        la $a0, j
        syscall
        j main
next_k: bne $v0, 'k', next_l
        li $v0, 4
        la $a0, k
        syscall
        j main
next_l: bne $v0, 'l', next_m
        li $v0, 4
        la $a0, l
        syscall
        j main
next_m: bne $v0, 'm', next_n
        li $v0, 4
        la $a0, m
        syscall
        j main
next_n: bne $v0, 'n', next_o
        li $v0, 4
        la $a0, n
        syscall
        j main
next_o: bne $v0, 'o', next_p
        li $v0, 4
        la $a0, o
        syscall
        j main
next_p: bne $v0, 'p', next_q
        li $v0, 4
        la $a0, p
        syscall
        j main
next_q: bne $v0, 'q', next_r
        li $v0, 4
        la $a0, q
        syscall
        j main
next_r: bne $v0, 'r', next_s
        li $v0, 4
        la $a0, r
        syscall
        j main
next_s: bne $v0, 's', next_t
        li $v0, 4
        la $a0, s
        syscall
        j main
next_t: bne $v0, 't', next_u
        li $v0, 4
        la $a0, t
        syscall
        j main
next_u: bne $v0, 'u', next_v
        li $v0, 4
        la $a0, u
        syscall
        j main
next_v: bne $v0, 'v', next_w
        li $v0, 4
        la $a0, v
        syscall
        j main
next_w: bne $v0, 'w', next_x
        li $v0, 4
        la $a0, w
        syscall
        j main
next_x: bne $v0, 'x', next_y
        li $v0, 4
        la $a0, x
        syscall
        j main
next_y: bne $v0, 'y', next_z
        li $v0, 4
        la $a0, y
        syscall
        j main
next_z: bne $v0, 'z', next_A
        li $v0, 4
        la $a0, z
        syscall
        j main
next_A: bne $v0, 'A', next_B
        li $v0, 4
        la $a0, A
        syscall
        j main
next_B: bne $v0, 'B', next_C
        li $v0, 4
        la $a0, B
        syscall
        j main
next_C: bne $v0, 'C', next_D
        li $v0, 4
        la $a0, C
        syscall
        j main
next_D: bne $v0, 'D', next_E
        li $v0, 4
        la $a0, D
        syscall
        j main
next_E: bne $v0, 'E', next_F
        li $v0, 4
        la $a0, E
        syscall
        j main
next_F: bne $v0, 'F', next_G
        li $v0, 4
        la $a0, F
        syscall
        j main
next_G: bne $v0, 'G', next_H
        li $v0, 4
        la $a0, G
        syscall
        j main
next_H: bne $v0, 'H', next_I
        li $v0, 4
        la $a0, H
        syscall
        j main
next_I: bne $v0, 'I', next_J
        li $v0, 4
        la $a0, I
        syscall
        j main
next_J: bne $v0, 'J', next_K
        li $v0, 4
        la $a0, J
        syscall
        j main
next_K: bne $v0, 'K', next_L
        li $v0, 4
        la $a0, K
        syscall
        j main
next_L: bne $v0, 'L', next_M
        li $v0, 4
        la $a0, L
        syscall
        j main
next_M: bne $v0, 'M', next_N
        li $v0, 4
        la $a0, M
        syscall
        j main
next_N: bne $v0, 'N', next_O
        li $v0, 4
        la $a0, N
        syscall
        j main
next_O: bne $v0, 'O', next_P
        li $v0, 4
        la $a0, O
        syscall
        j main
next_P: bne $v0, 'P', next_Q
        li $v0, 4
        la $a0, P
        syscall
        j main
next_Q: bne $v0, 'Q', next_R
        li $v0, 4
        la $a0, Q
        syscall
        j main
next_R: bne $v0, 'R', next_S
        li $v0, 4
        la $a0, R
        syscall
        j main
next_S: bne $v0, 'S', next_T
        li $v0, 4
        la $a0, S
        syscall
        j main
next_T: bne $v0, 'T', next_U
        li $v0, 4
        la $a0, T
        syscall
        j main
next_U: bne $v0, 'U', next_V
        li $v0, 4
        la $a0, U
        syscall
        j main
next_V: bne $v0, 'V', next_W
        li $v0, 4
        la $a0, V
        syscall
        j main
next_W: bne $v0, 'W', next_X
        li $v0, 4
        la $a0, W
        syscall
        j main
next_X: bne $v0, 'X', next_Y
        li $v0, 4
        la $a0, X
        syscall
        j main
next_Y: bne $v0, 'Y', next_Z
        li $v0, 4
        la $a0, Y
        syscall
        j main
next_Z: bne $v0, 'Z', next_1
        li $v0, 4
        la $a0, Z
        syscall
        j main
next_1: bne $v0, '1', next_2
        li $v0, 4
        la $a0, num1
        syscall
        j main
next_2: bne $v0, '2', next_3
        li $v0, 4
        la $a0, num2
        syscall
        j main
next_3: bne $v0, '3', next_4
        li $v0, 4
        la $a0, num3
        syscall
        j main
next_4: bne $v0, '4', next_5
        li $v0, 4
        la $a0, num4
        syscall
        j main
next_5: bne $v0, '5', next_6
        li $v0, 4
        la $a0, num5
        syscall
        j main
next_6: bne $v0, '6', next_7
        li $v0, 4
        la $a0, num6
        syscall
        j main
next_7: bne $v0, '7', next_8
        li $v0, 4
        la $a0, num7
        syscall
        j main
next_8: bne $v0, '8', next_9
        li $v0, 4
        la $a0, num8
        syscall
        j main
next_9: bne $v0, '9', next_0
        li $v0, 4
        la $a0, num9
        syscall
        j main
next_0: bne $v0, '0', other
        li $v0, 4
        la $a0, num0
        syscall
        j main
other:	li $v0, 11
	li $a0, '*'
	syscall
	j main
stop:	li $v0, 4		#程序结束时，先输出一个换行，再输出作者的姓名。
	la $a0, name_and_id
	syscall
	li $v0, 10		#程序结束
	syscall
