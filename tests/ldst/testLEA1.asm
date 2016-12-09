.ORIG x3000

;chargement de la valeur 8 dans R0 via la constante definie comme valant 8.
;resultat final : 0000 0000 0000 1000

AND R0,R0,0
LEA R0,const1

const1 : .FILL 8

.END