.ORIG 3000

;met a 0.
;met a 15.
;inverse tous les bits.
;inverse a nouveau tous les bits.
;soustrait 12.
;inverse tous les bits
;inverse a nouveau tous les bits pour obtenir 3.
;tout ce passe dans le registre general R0.
;resultat final : 0000 0000 0000 0011

AND R0,R0,0         ;0000 0000 0000 0000
ADD R0,R0,15		;0000 0000 0000 1111
NOT R0,R0           ;1111 1111 1111 0000
NOT R0,R0           ;0000 0000 0000 1111
ADD R0,R0,-12       ;0000 0000 0000 0011
NOT R0,R0           ;1111 1111 1111 1100
NOT R0,R0           ;0000 0000 0000 0011

.END