.ORIG x3000

;Programme tres simple pour tester BRp.
;Les deux derniers AND figurent ici pour s'assurer qu'on saute bien a l'etiquette etape2.
;Resultat final : 0000 0000 0000 0101.

	AND R0,R0,0		;0000 0000 0000 0000
	ADD R0,R0,-10		;1111 1111 1111 0110
	ADD R0,R0,15		;0000 0000 0000 0101
	BRp etape2
	AND R1,R1,0
	AND R2,R2,0

etape3: BRp fin

etape2: BRp etape3

fin: NOP

.END
