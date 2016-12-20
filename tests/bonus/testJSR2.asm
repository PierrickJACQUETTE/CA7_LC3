.ORIG x0000

;programme un peu plus complexe faisant appel a des instructions JSR et JSRR pour appeler des sous-routines.
;Resultat final dans R0: 0000 0000 0000 1111.

	AND R0,R0,0
	AND R1,R1,0
	AND R2,R2,0
	LEA R2,etape1
	JSRR R2

etape0: ADD R0,R0,4
	LEA R2,etape3
	JSRR R2
	RET

etape1: ADD R1,R1,4
	AND R0,R0,0
	JSR etape0
	RET
	
etape3: ADD R0,R0,15
	RET

.END
