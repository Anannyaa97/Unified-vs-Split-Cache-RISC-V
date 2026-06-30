# ----------------------------------------------------
# Unified Cache Performance Analysis
# Computer Organization and Architecture Project
# ----------------------------------------------------

.data
array: .word 5,10,15,20,25,30,35,40
n: .word 8

.text
.globl main

main:
    la t0, array
    la t5, n
    lw t1, 0(t5)

    li t2, 0
    li t3, 0

loop:
    beq t2, t1, exit
    lw t4, 0(t0)
    add t3, t3, t4
    sw t3, 0(t0)
    addi t0, t0, 4
    addi t2, t2, 1
    j loop

exit:
    nop
