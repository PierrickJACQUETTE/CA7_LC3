.ORIG x3000

;chargement de la valeur 2 dans R0 via la constante definie a l'adresse 2 (ici 3002 car
;le programme commence a l'adresse 3000).
;resultat final : 0000 0000 0000 0010

AND R0,R0,0
LEA R0,const1

const1 : .FILL 8

.END
