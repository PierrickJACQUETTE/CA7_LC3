.ORIG x3000

;Programme tres simple pour tester BRz.
;Les deux derniers AND figurent ici pour s'assurer qu'on saute bien a l'etiquette etape2.
;Resultat final : 0000 0000 0000 0000.

	AND R0,R0,0		;0000 0000 0000 0000
	ADD R0,R0,10		;0000 0000 0000 1010
	ADD R0,R0,-10		;0000 0000 0000 0000
	BRz etape2
	AND R1,R1,0
	AND R2,R2,0

etape3: BRz fin

etape2: BRz etape3

fin: NOP

.END
