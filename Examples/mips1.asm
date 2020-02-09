.data
arrayb: .byte 1:20
arrayh: .half 2:20
arrayw: .word 3:20
xarray: .word 0:20
length: .word 0:20
x: .byte 2
.text
.main
and $t1, $t1, 0001b
lb $t6, x
sll $t6, $t6, 4
la $t1, arrayb
la $t2, arrayh
la $t3, arrayw
la $t4, xarray
li $t0, 0
while:
	bge  $t0, 20, exit
	lb $s1, ($t1)
	lh $s2, ($t2)
	lw $s3, ($t3)
	add $t4, $s1, $s2
	add $t4, $t4, $s3
	add $t1, $t1, 1
	add $t2, $t2, 2
	add $t3, $t3, 4
	add $t4, $t4, 4
	add $t0, $t0, 1
	j while
exit:	