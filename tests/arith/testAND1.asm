.ORIG x3000

;mise a 0 du registre R0.
;mise a 0 du registre R1.
;mise a 0 du registre R2.
;mise a 0 du registre R3.
;mise a 15 du registre R3.
;mise a 15 du registre R1 avec la valeur de R3.
;mise a 0 du registre R1 en utilistant le registre R0.
;mise a 3 du registre R2.
;mise a 15 du registre R1 avec la valeur de R3.
;mise a 14 du registre R1 en lui soustrayant 1.
;mise a 2 du registre R0.
;resultat final 0000 0000 0000 0010.

AND R0,R0,0		;0000 0000 0000 0000
AND R1,R1,0		;0000 0000 0000 0000
AND R2,R2,0     ;0000 0000 0000 0000
AND R3,R3,0     ;0000 0000 0000 0000
ADD R3,R3,15    ;0000 0000 0000 1111
ADD R1,R1,R3	;0000 0000 0000 1111
AND R1,R0,R1	;0000 0000 0000 0000
ADD R2,R2,3		;0000 0000 0000 0011
ADD R1,R1,R3    ;0000 0000 0000 1111
ADD R1,R1,-1    ;0000 0000 0000 1110
AND R0,R1,R2    ;0000 0000 0000 0010

.END