.ORIG x3000

;mise a 0 de R0, R1 et R2.
;mise a 15 de R1.
;mise a 30 de R1.
;mise a 60 de R1.
;mise a 61 de R1.
;valeurs de R2 un peu galere mais l'idee est d'avoir les bits 0,2 et 5 equivalents avec R1 afin de mettre ce resultat ;dans R1
;resultat final : 0000 0000 0001 0101

AND R0,R0,0 	;0000 0000 0000 0000
AND R1,R1,0 	;0000 0000 0000 0000
AND R2,R2,0		;0000 0000 0000 0000
ADD R1,R1,15  	;0000 0000 0000 1111
ADD R1,R1,R1    ;0000 0000 0001 1110
ADD R1,R1,R1    ;0000 0000 0011 1100
ADD R1,R1,1     ;0000 0000 0011 1101
NOT R2,R1		;1111 1111 1100 0010
ADD R2,R2,15    ;1111 1111 1101 0001
ADD R2,R2,4     ;1111 1111 1101 0101
AND R0,R1,R2    ;0000 0000 0001 0101

.END