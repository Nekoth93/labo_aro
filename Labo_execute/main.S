MOV R0, #0
MOV R1, #0
MOV R2, #0
MOV R3, #0
MOV R4, #0
MOV R5, #0x0000

@ R5 : SP
@ R6 : LR

main:
    BL f1

.org 0x20
f1:
    STRH R6, [R5, #0]
    ADD R5, R5, #2
    BL f2
    SUB R5, R5, #2
    LDRH R7, [R5, #0]

.org 0x40    
f2:
    MOV R7, R6
    STRH R6, [R5, #0]
    ADD R5, R5, #2
    BL f3
    SUB R5, R5, #2
    LDRH R7, [R5, #0]

.org 0x60    
f3:
    MOV R7, R6
    STRH R6, [R5, #0]
    ADD R5, R5, #2
    BL f4
    SUB R5, R5, #2
    LDRH R7, [R5, #0]

.org 0x80
f4:
    MOV R7, R6
    STRH R6, [R5, #0]
    ADD R5, R5, #2
    BL f5
    SUB R5, R5, #2
    LDRH R7, [R5, #0]
    
.org 0x100
f5:
    MOV R7, R6
    STRH R6, [R5, #0]
    ADD R5, R5, #2
    BL f6
    SUB R5, R5, #2
    LDRH R7, [R5, #0]
    
.org 0x120
f6:
    MOV R7, R6
    STRH R6, [R5, #0]
    ADD R5, R5, #2
    BL f7
    SUB R5, R5, #2
    LDRH R7, [R5, #0]
    
.org 0x140
f7:
    MOV R7, R6
    STRH R6, [R5, #0]
    ADD R5, R5, #2
    BL f8
    SUB R5, R5, #2
    LDRH R7, [R5, #0]

f8:
    MOV R7, R6
    B main