.ORIG 3000

;met a 0 le registre general R0.
;lui affecte 15.
;inversion de tous les bits.
;nouvelle inversion de tous les bits.
;soustrait 12 afin d'obtenir 3.
;tout ce passe dans le registre general R0.
;resultat final : 0000 0000 0000 0011

AND R0,R0,0         ;0000 0000 0000 0000
ADD R0,R0,15		;0000 0000 0000 1111
NOT R0,R0           ;1111 1111 1111 0000
NOT R0,R0			;0000 0000 0000 1111
ADD R0,R0,-12       ;0000 0000 0000 0011

.END