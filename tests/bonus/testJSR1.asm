.ORIG x0000

;Programme tout simple appelant une sous-routine qui met R1 a 4 et appelle une autre sous-routine qui met R0 a 15.
;Resultat final dans R0: 0000 0000 0000 1111.

	AND R0,R0,0
	AND R1,R1,0
	AND R2,R2,0
	AND R6,R6,0
	LEA R2,fin
	JSR etape1
	JMP R2

etape2: ADD R0,R0,15
	RET

etape1: ADD R1,R1,4
	ADD R6,R7,0
	JSR etape2
	JMP R6

fin:	NOP

.END
