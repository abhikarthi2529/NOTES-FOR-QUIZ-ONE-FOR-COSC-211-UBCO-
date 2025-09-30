#  Write s0 = t0^2 + ((t1-5)/t2) in asm
# Assuming $t0 = 10, $t1 = 25, and $t2 = 2, what is the value of $s0 after the code runs?

# Do not use sudo instructions

addi $t0, $zero , 10 # t0 = 10
addi $t1, $zero,  25 # t1 = 25
addi $t2, $zero , 2 # t2 = 2

# Follow the order of operations 
addi $t1, $t1,  -5 # t1 = t1 - 5. 25 will now become 20. 
div $t1,  $t2 # since 20/2 is 10. We do not need to worry about reminder 
mflo $a2 # Low will point to the quotient 

# Since we are doing with the contents inside of the (), we can now move on to the additon 
mult $t0, $t0
mflo $a3

add $s0, $a3, $a2 # s0 = a3 + a2


