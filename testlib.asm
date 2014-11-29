
#temp game lib builder
testLibManip:
	la $s0, dummyString	#loading string of 9 letters
	la $s7, compare		#loading string for letter count

	compareWordLoop:
		lb $s1, ($s0)			#loading byte from 9 letters
		beq $s1, 'a', increasea		#if a
		beq $s1, 'b', increaseb		#if b
		beq $s1, 'c', increasec		#if c
		beq $s1, 'd', increased		#if d
		beq $s1, 'e', increasee		#if e
		beq $s1, 'f', increasef		#if f
		beq $s1, 'g', increaseg		#if g
		beq $s1, 'h', increaseh		#if h
		beq $s1, 'i', increasei		#if i
		beq $s1, 'j', increasej		#if j
		beq $s1, 'k', increasek		#if k
		beq $s1, 'l', increasel		#if l
		beq $s1, 'm', increasem		#if m
		beq $s1, 'n', increasen		#if n
		beq $s1, 'o', increaseo		#if o
		beq $s1, 'p', increasep		#if p
		beq $s1, 'q', increaseq		#if q
		beq $s1, 'r', increaser		#if r
		beq $s1, 's', increases		#if s
		beq $s1, 't', increaset		#if t
		beq $s1, 'u', increaseu		#if u
		beq $s1, 'v', increasev		#if v
		beq $s1, 'w', increasew		#if w
		beq $s1, 'x', increasex		#if x
		beq $s1, 'y', increasey		#if y
		beq $s1, 'z', increasez		#if z
		blt $s1, 'a', next		#if NAL
		bgt $s1, 'z', next		#if NAL
	j compareWordLoop			#redundancy

##############################################################################################

	next:					#begin library word
		xor $t1, $t1, $t1		#resetting register, just in case
		li $t1, 0			#storing 0
		la $t0, dictionaryArray		#loading full dictionary
		la $s7, library			#loading string for letter count
		get_WordArray ($s0, $t0, $t1)	#loading from library in $t0, the $s0'th entry, into $s6
		
		li $v0, 4
		xor $a0, $a0, $a0
		move $a0, $s0
		syscall
		
	libLoop:				#loop for building letter count for library word
		lb $s1, ($s0)			#loading letter from word from dictionary
		
		li $v0, 11			#printing character for debugging
		move $a0, $s1
		syscall
		
		beq $s1, 'a', increasea2	#if a
		beq $s1, 'b', increaseb2	#if b
		beq $s1, 'c', increasec2	#if c
		beq $s1, 'd', increased2	#if d
		beq $s1, 'e', increasee2	#if e
		beq $s1, 'f', increasef2	#if f
		beq $s1, 'g', increaseg2	#if g
		beq $s1, 'h', increaseh2	#if h
		beq $s1, 'i', increasei2	#if i
		beq $s1, 'j', increasej2	#if j
		beq $s1, 'k', increasek2	#if k
		beq $s1, 'l', increasel2	#if l
		beq $s1, 'm', increasem2	#if m
		beq $s1, 'n', increasen2	#if n
		beq $s1, 'o', increaseo2	#if o
		beq $s1, 'p', increasep2	#if p
		beq $s1, 'q', increaseq2	#if q
		beq $s1, 'r', increaser2	#if r
		beq $s1, 's', increases2	#if s
		beq $s1, 't', increaset2	#if t
		beq $s1, 'u', increaseu2	#if u
		beq $s1, 'v', increasev2	#if v
		beq $s1, 'w', increasew2	#if w
		beq $s1, 'x', increasex2	#if x
		beq $s1, 'y', increasey2	#if y
		beq $s1, 'z', increasez2	#if y
		blt $s1, 'a', compareLoop	#if NAL
		bgt $s1, 'z', compareLoop	#if NAL
	j libLoop				#redundancy

increasea:			#increase a from 9 letter string loop
	lb $s6, 0($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 0($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increaseb:			#increase b from 9 letter string loop
	lb $s6, 1($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 1($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increasec:			#increase c from 9 letter string loop
	lb $s6, 2($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 2($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increased:			#increase d from 9 letter string loop
	lb $s6, 3($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 3($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increasee:			#increase e from 9 letter string loop
	lb $s6, 4($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 4($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increasef:			#increase f from 9 letter string loop
	lb $s6, 5($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 5($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increaseg:			#increase g from 9 letter string loop
	lb $s6, 6($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 6($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increaseh:			#increase h from 9 letter string loop
	lb $s6, 7($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 7($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increasei:			#increase i from 9 letter string loop
	lb $s6, 8($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 8($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increasej:			#increase j from 9 letter string loop
	lb $s6, 9($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 9($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increasek:			#increase k from 9 letter string loop
	lb $s6, 10($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 10($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increasel:			#increase l from 9 letter string loop
	lb $s6, 11($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 11($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increasem:			#increase m from 9 letter string loop
	lb $s6, 12($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 12($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increasen:			#increase n from 9 letter string loop
	lb $s6, 13($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 13($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increaseo:			#increase o from 9 letter string loop
	lb $s6, 14($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 14($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increasep:			#increase p from 9 letter string loop
	lb $s6, 15($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 15($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increaseq:			#increase q from 9 letter string loop
	lb $s6, 16($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 16($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increaser:			#increase r from 9 letter string loop
	lb $s6, 17($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 17($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increases:			#increase s from 9 letter string loop
	lb $s6, 18($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 18($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increaset:			#increase t from 9 letter string loop
	lb $s6, 19($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 19($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increaseu:			#increase u from 9 letter string loop
	lb $s6, 20($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 20($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increasev:			#increase v from 9 letter string loop
	lb $s6, 21($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 21($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increasew:			#increase w from 9 letter string loop
	lb $s6, 22($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 22($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increasex:			#increase x from 9 letter string loop
	lb $s6, 23($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 23($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increasey:			#increase y from 9 letter string loop
	lb $s6, 24($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 24($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

increasez:			#increase z from 9 letter string loop
	lb $s6, 25($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 25($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j compareWordLoop		#return to letter count loop

###############################################################################################################################################

compareW:			#compare two letter counters
	la $s0, compare		#load counter from 9 letter string
	la $s1, library		#load counter from library word
compareLoop:			#loop to compare letters
	lb $t0, ($s0)		#load letter count from 9 letter
	lb $t2, ($s1)		#load letter count from library letter
	bge $t0, $t2, nextL	#next letter if check passes
	
nextW:
	beq $s6, 0, testManipReturn	#if null was loaded from the library, return to the main
	addi $t1, $t1, 1
	la $t0, dictionaryArray		#loading full dictionary
	la $s7, library			#loading string for letter count
	get_WordArray ($s0, $t0, $t1)	#loading from library in $t0, the $s0'th entry, into $s6
		
j libLoop

nextL:				#return the next letter in compare loop
	addi $s1, $s1, 1	#increase string buffer in 9 letter counter
	addi $s0, $s0, 1	#increase string buffer in library loop counter
	beq $s1, 0, correct	#if end of string counter, add to correct game list
	beq $s0, 0, correct	#if end of string counter, add to correct game list
j compareLoop			#return to compare loop

###############################################################################################################################################

increasea2:			#increase a from library word loop
	lb $s6, 0($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 0($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increaseb2:			#increase b from library word loop
	lb $s6, 1($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 1($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increasec2:			#increase c from library word loop
	lb $s6, 2($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 2($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increased2:			#increase d from library word loop
	lb $s6, 3($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 3($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increasee2:			#increase e from library word loop
	lb $s6, 4($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 4($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increasef2:			#increase f from library word loop
	lb $s6, 5($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 5($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increaseg2:			#increase g from library word loop
	lb $s6, 6($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 6($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increaseh2:			#increase h from library word loop
	lb $s6, 7($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 7($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increasei2:			#increase i from library word loop
	lb $s6, 8($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 8($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increasej2:			#increase j from library word loop
	lb $s6, 9($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 9($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increasek2:			#increase k from library word loop
	lb $s6, 10($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 10($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increasel2:			#increase l from library word loop
	lb $s6, 11($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 11($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increasem2:			#increase m from library word loop
	lb $s6, 12($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 12($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increasen2:			#increase n from library word loop
	lb $s6, 13($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 13($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increaseo2:			#increase o from library word loop
	lb $s6, 14($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 14($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increasep2:			#increase p from library word loop
	lb $s6, 15($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 15($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increaseq2:			#increase s from library word loop
	lb $s6, 16($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 16($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increaser2:			#increase r from library word loop
	lb $s6, 17($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 17($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increases2:			#increase s from library word loop
	lb $s6, 18($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 18($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increaset2:			#increase t from library word loop
	lb $s6, 19($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 19($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increaseu2:			#increase u from library word loop
	lb $s6, 20($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 20($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increasev2:			#increase v from library word loop
	lb $s6, 21($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 21($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increasew2:			#increase w from library word loop
	lb $s6, 22($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 22($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increasex2:			#increase x from library word loop
	lb $s6, 23($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 23($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increasey2:			#increase y from library word loop
	lb $s6, 24($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 24($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

increasez2:			#increase z from library word loop
	lb $s6, 25($s7)		#loading what's there
	addi $s6, $s6, 1	#increase it
	sb $s7, 25($s7)		#store it
	addi $s0, $s0, 1	#increase string buffer to compare next byte
j libLoop			#return to library count loop

correct:
	
