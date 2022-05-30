start:

MOV r0, #3
MOV r2, #8
ADD r4, r0, r3
MOV r1, #43
ADD r0, r1, r2
MOV r1, r0
MOV r6, #0

LSL r4, r2, #1
NEG r1, r2
SUB r2,r3,#2

AND r4, r1
STRB r4, [r2, r1]



B startls