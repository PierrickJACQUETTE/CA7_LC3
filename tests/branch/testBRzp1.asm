.ORIG x3000

;Programme tres simple pour tester BRzp.
;Les deux derniers AND figurent ici pour s'assurer qu'on saute bien a l'etiquette etape2.
;De meme avec les deux derniers ADD permettant de s'assurer qu'on ne les executent pas et 
;qu'on saute immediatemment a l'etiquette etape3.
;Resultat final : 0000 0000 0000 0101.

	AND R0,R0,0		;0000 0000 0000 0000
	ADD R0,R0,10		;0000 0000 0000 1010
	ADD R0,R0,-10		;0000 0000 0000 0000
	BRzp etape2
	AND R1,R1,0
	AND R2,R2,0

etape3: BRzp fin

etape2: ADD R0,R0,5		;0000 0000 0000 0101
	BRzp etape3
	ADD R1,R1,5
	ADD R2,R2,2

fin: NOP

.END
