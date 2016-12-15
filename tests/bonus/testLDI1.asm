.ORIG x0000

;Petit programme permettant de recuperer la valeur 15 et de la ranger dans R0.
;Charge la valeur situe a l'adresse de l'etiquette adresse1 pour ensuite ranger dans R0
;la valeur situe a l'adresse 3 (car la valeur situe au niveau de adresse1 est 3).
;Resultat final dans R0: 0000 0000 0000 1111.

	  AND R0,R0,0
	  LDI R0,adresse1
	
adresse1: .FILL 3

	  .FILL 15

.END
