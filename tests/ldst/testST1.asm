.ORIG x3000

;Mise a 0 des trois registres R0, R1 et R2.
;Affectation de valeur aux registres via des labels.
;Quelques additions entre les registres.
;Negation du contenu de R0 qu'on stocke dans R4.
;Rangement du contenu de R4 a l'adresse du label const4.
;Cargement de la nouvelle valeur stockée a l'adresse du label const4 dans R0.
;Resultat final dans R0 : 1111 1111 1111 0000


AND R0,R0,0		;0000 0000 0000 0000
AND R1,R1,0		;0000 0000 0000 0000
AND R2,R2,0		;0000 0000 0000 0000
AND R4,R4,0		;0000 0000 0000 0000
LD R0,const1		;0000 0000 0000 1000
LD R1,const2		;0000 0000 0000 0100
LD R2,const3		;0000 0000 0000 0011
LD R4,const4		;0000 0000 0000 0000
ADD R1,R1,R2		;0000 0000 0000 0111
ADD R0,R0,R1		;0000 0000 0000 1111
NOT R4,R0		;1111 1111 1111 0000
ST R4,const4		;1111 1111 1111 0000
LD R0,const4		;1111 1111 1111 0000

const1: .FILL 8
const2: .FILL 4
const3: .FILL 3
const4: .FILL 0

.END
