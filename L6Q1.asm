# Instructions 
# int A[5] = {5,2,-1,3,10};   # declare array A with 5 elements
# int B[5];                   # declare array B with 5 elements
# B[3] = A[i];               # copy element at index i of A into index 3 of B (assume i = 2)

.data
A: .word 5, 2, -1, 3, 10    # array A with 5 elements
B: .space 20                # array B with 5 elements (5 * 4 bytes)

.text
main:
    # i = 2
    addi $s0, $zero, 2      

    # Load A[i]
    la   $t0, A             # base address of A
    sll  $t1, $s0, 2        # i * 4 (word offset)
    add  $t0, $t0, $t1      # address of A[i]
    lw   $t2, $t0      # load value at A[i] into $t2

    # Store into B[3]
    la   $t3, B             # base address of B
    sw   $t2, 12($t3)       # store value at offset 12 (3 * 4)
