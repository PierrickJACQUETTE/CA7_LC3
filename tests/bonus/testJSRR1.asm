.ORIG x0000

;Petit programme simple testant l'instruction JSRR via deux appels successifs mettant R0 a 5 puis 15.
;Resultat final dans R0: 0000 0000 0000 1111.

	AND R0,R0,0
	AND R1,R1,0
	LEA R1,etape1
	JSRR R1

etape2: ADD R0,R0,10
	RET

etape1: ADD R0,R0,5
	LEA R1,etape2
	JSRR R1
	RET

.END
