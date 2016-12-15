.ORIG x3000

;Mise a 0 du registre R0 puis sauts automatiques d'une etiquette a une autre.
;Resultat final dans R0: 1111 1111 1111 1011.

	AND R0,R0,0
	BRnzp positif
	ADD R0,R0,15

negatif: ADD R0,R0,-10
	 BRnzp fin

positif: ADD R0,R0,5
	 BRnzp negatif

fin: NOP

.END
