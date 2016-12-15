.ORIG x3000

;Mise a 0 des registres R et R1.
;Chargement de l'adresse de l'etiquette etape1 puis jump dessus.
;Ajout de 5 a R0.
;Chargement de l'adresse de l'etiquette etape2 puis jump dessus.
;Ajout de 5 a R0.
;Chargement de l'adresse de l'etiquette etape3 puis jump dessus.
;Ajout de 5 a R0.
;Chargement de l'adresse de l'etiquette fin puis jump dessus.
;Resultat final dans R0: 0000 0000 0000 1111.

	AND R0,R0,0
	AND R1,R1,0
	LEA R1,etape1
	JMP R1
	ADD R0,R0,-5
	NOP

etape2: ADD R0,R0,5
	LEA R1,etape3
	JMP R1
	NOP

etape3: ADD R0,R0,5
	LEA R1,fin
	JMP R1
	NOP

etape1: ADD R0,R0,5
	LEA R1,etape2
	JMP R1
	NOP

fin: NOP

.END
