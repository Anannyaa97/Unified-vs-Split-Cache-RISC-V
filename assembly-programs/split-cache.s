# ----------------------------------------------------
# Split Cache Performance Analysis
# Computer Organization and Architecture Project
# Simulates instruction and data accesses using
# a split cache architecture.
# ----------------------------------------------------

.data
value: .word 5

.text
.globl main

main:
    la t0, value
    lw t1, 0(t0)

    li t2, 100

loop:
    add t1, t1, t1
    addi t1, t1, 3
    addi t1, t1, 2
    addi t1, t1, 1
    sw t1, 0(t0)

    addi t2, t2, -1
    bnez t2, loop

exit:
    nop
