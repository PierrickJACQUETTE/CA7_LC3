.ORIG x0000

;Test un peu plus avance pour LDI et STI.
;Mise a 0 de R0 et R1 puis rangement de 15 dans R1.
;La valeur contenue dans R1 est rangee a l'adresse de l'etiquette resultat via l'instruction STI.
;Cette meme valeur est ensuite affectee a R0 via l'instruction LDI.
;Resultat final dans R0: 0000 0000 0000 1111.

	  AND R0,R0,0
	  AND R1,R1,0
	  ADD R1,R1,15
	  STI R1,adresse1
	  LDI R0,adresse1

adresse1: .FILL 6

resultat: .FILL 0

.END
