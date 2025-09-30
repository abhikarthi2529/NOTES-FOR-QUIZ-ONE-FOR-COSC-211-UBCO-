.data
.align 3 # The next data will be placed at an address divisible by 2^3 = 8
.word 15
.word 27
.text
addi $t1 $t2 10 # t1 = t2 + 10, at the start t1 is zero
addi $t2 $a0 20 # t2  = a0 + 20 # a0 at the start is empty
sub $t3 $t2 $t1
# How is this c code wrriten is asm. t6 = t1 + t2 + t3. 
# You can not state, add $t6 $t1 $t2 $t3. This is because add only accepts one destination register and two other registers to do the add operation.
add $t6 $t1 $t2 
add $t6 $t6 $t3 

# Overflow rules in MIPS signed arithmetic:
# 1) Adding two positive numbers gives a negative result -> overflow
# 2) Adding two negative numbers gives a positive result -> overflow
# 3) Subtraction with opposite signs can also trigger overflow

# addi $s0, $0, 0x70000000    # $s0 = 0x70000000 (positive: 1,879,048,192)
# addi $s1, $0, 0x80000000    # $s1 = 0x80000000 (negative: -2,147,483,648)
# addi $s2, $0, 0x90000000    # $s2 = 0x90000000 (negative: -1,879,048,192)

# Which are negative? $s1 and $s2 (MSB = 1 means negative in 2's complement)

# a) add $t0, $s0, $s1
#    0x70000000 + 0x80000000 = 0xF0000000
#    Positive + Negative = Negative, NO OVERFLOW
#    $t0 = 0xF0000000

# b) add $t1, $s1, $s2
#    0x80000000 + 0x90000000 = 0x110000000 (needs 33 bits!)
#    Negative + Negative = should be negative, but result wraps to positive
#    OVERFLOW! (two negatives shouldn't give positive)

# c) sub $t2, $s1, $s2
#    0x80000000 - 0x90000000 = 0x80000000 + 0x70000000 = 0xF0000000
#    $t2 = 0xF0000000, NO OVERFLOW

# Pseudo instructions 
li $s0 10 

# Multiplication 
# When you multiply numbers in binary, let's say we want to multiply m x n. 
# The sum of the bits of m and n will be the number of bits of the product m x n. 

# Let's multiply 10 x 20. 
mult $t1 $t2
# Since 10 x 20 is 200, it is within the range of 2^32. Thus, our value is in LO 
mflo $s7
# Above is a native instruction, the corresponding pseudo instruction is 
 mul $t0, $t1, $t2
# Multiplies $t1 * $t2
# Result is stored in (HI, LO), and the low-order 32 bits are also copied into $t0.
