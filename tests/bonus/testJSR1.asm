.ORIG x0000

;Programme tout simple appelant une sous-routine qui met R1 a 4 et appelle une autre sous-routine qui met R0 a 15.
;Resultat final dans R0: 0000 0000 0000 1111.

	AND R0,R0,0
	AND R1,R1,0
	JSR etape1
	NOP

etape2: ADD R0,R0,15
	RET

etape1: ADD R1,R1,4
	JSR etape2
	RET

.END
