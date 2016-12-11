.ORIG x3000

;Mise a 0 de R0, R1, R2 et R3.
;Chargement de l'adresse de const1 dans R3.
;Chargement de la valeur de const2 dans R1.
;Chargement de la valeur de const3 dans R2.
;Sommes successives afin de ranger 14 dans R1.
;Chargement des valeurs de const2 puis const4 et enfin const3 dans R0.
;Rangement de la valeur de R1 (14) a l'adresse du label const2.
;Chargement de la valeur a l'adresse const2 dans R0.
;Resultat final : 0000 0000 0000 1110.

AND R0,R0,0		;0000 0000 0000 0000
AND R1,R1,0		;0000 0000 0000 0000
AND R2,R2,0		;0000 0000 0000 0000
AND R3,R3,0		;0000 0000 0000 0000
LEA R3,const1           ;0011 0000 0000 1110
LD R1,const2		;0000 0000 0000 0100
LD R2,const3		;0000 0000 0000 0011
ADD R1,R1,8		;0000 0000 0000 1100
ADD R1,R1,R2		;0000 0000 0000 1111
ADD R1,R1,-1		;0000 0000 0000 1110
LDR R0,R3,1		;0000 0000 0000 0100
LDR R0,R3,3		;0000 0000 0000 1111
LDR R0,R3,2		;0000 0000 0000 0011
ST R1,const2		;0000 0000 0000 1110
LDR R0,R3,1		;0000 0000 0000 1110

const1: .FILL 8
const2: .FILL 4
const3: .FILL 3
const4: .FILL 15

.END
