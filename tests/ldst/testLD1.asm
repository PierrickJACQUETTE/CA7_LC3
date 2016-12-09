.ORIG x3000

;mise a 0 de R0, R1 et R2.
;chargement de 8 dans R0.
;chargement de 15 dns R1.
;mise a 23 de R2 via l'addtion de R1 et R0.
;chargement de 23 dans R0.
;resultat final : 0000 0000 0001 0111

AND R0,R0,0
AND R1,R1,0
AND R2,R2,0
LD R0,const1	;0000 0000 0000 1000
LD R1,const2	;0000 0000 0000 1111
ADD R2,R0,R1	;0000 0000 0001 0111
LD R0,const3    ;0000 0000 0001 0111

const1: .FILL 8
const2: .FILL 15
const3: .FILL 23

.END