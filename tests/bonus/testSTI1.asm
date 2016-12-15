.ORIG x0000

;Mise a 0 puis 15 du registre R0.
;Rangement de la valeur de R0 (15) a l'adresse de l'etiquette resultat.
;Resultat final dans R0: 0000 0000 0000 1111.

AND R0,R0,0
ADD R0,R0,15
STI R0,adresse1

adresse1: .FILL 4

resultat: .FILL 1

.END
