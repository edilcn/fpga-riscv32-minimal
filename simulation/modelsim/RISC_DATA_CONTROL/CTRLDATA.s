addi x0 x1 4
addi x2 x3 10
lw x4 1(x2)
beq x1 x0 seq
sw x18 0(x2) 
jal end

seq:
sub x2 x4 x0
sb x20 0(x0)

end:
	nop
