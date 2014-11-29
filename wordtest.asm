# random number generator
randNumber:
	move $t1, $a0
	li   $v0, 41       # random int
	syscall
	divu $t0, $a0, $t1   #mod the length        
	mfhi $v0
jr $ra

####################################################################
#random letter generator
randAlpha:
	move $t1, $a0
	li   $v0, 41       # random int
	syscall
	divu $t0, $a0, $t1   #mod the length
	addi $t0, $t0, 97
	mfhi $v0
jr $ra

####################################################################
#get length of library
