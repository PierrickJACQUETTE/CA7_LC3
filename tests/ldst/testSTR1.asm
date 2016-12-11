.ORIG x3000

;Mise a 0 de R0, R1, R2 et R3.
;Chargement de l'adresse de const1 dans R3.
;Chargement de la valeur de const1 dans R0.
;Chargement de la valeur de const2 dans R1.
;Chargement de la valeur de const3 dans R2.
;Rangement de la valeur contenue dans R2 a l'adresse de const1.
;Rangement de la valeur contenue dans R0 a l'adresse de const3.
;Ajout de 3 au contenu de R0, R1 et R2.
;Rangement de la valeur contenue dans R0 a l'adresse de const1.
;Rangement de la valeur contenue dans R1 a l'adresse de const2.
;Rangement de la valeur contenue dans R2 a l'adresse de const3.
;L'execution donne successivement 1,2,3 puis 3,2,1 et enfin 4,5,6 pour respectivement 
;const1, const2 et const3.
;Resultat final : 0000 0000 0000 0100.

AND R0,R0,0		;0000 0000 0000 0000
AND R1,R1,0		;0000 0000 0000 0000
AND R2,R2,0		;0000 0000 0000 0000
AND R3,R3,0		;0000 0000 0000 0000
LEA R3,const1		;0000 0000 0001 0000
LDR R0,R3,0		;0000 0000 0000 0001
LDR R1,R3,1		;0000 0000 0000 0010
LDR R2,R3,2		;0000 0000 0000 0011
STR R2,R3,0		;0000 0000 0000 0011
STR R0,R3,2		;0000 0000 0000 0001
ADD R0,R0,3		;0000 0000 0000 0110
ADD R1,R1,3		;0000 0000 0000 0101
ADD R2,R2,3		;0000 0000 0000 0100
STR R0,R3,0		;0000 0000 0000 0100
STR R1,R3,1		;0000 0000 0000 0101
STR R2,R3,2		;0000 0000 0000 0110

const1: .FILL 1
const2: .FILL 2
const3: .FILL 3

.END
