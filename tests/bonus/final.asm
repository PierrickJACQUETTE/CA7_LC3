; Programme qui calcule la longueur d'une chaine et met le résultat dans R0
; puis compare le resultat avec celui attendu 11
; si le resultat est pas bon va à fin
; sinon créer des pointeurs pour tester les instructions LD, LDI, STI et STR
; a fin set et reset donnent comme resultat
; si ok : 0000 0000 0001 0011
; sinon : 0000 0000 0001 0000

.ORIG x3000
		LEA R0,chaine		; Initialisation du pointeur R0
		JSR strlen		; Saut à la sous-routine strlen
		AND R3,R3,0		; Mise à 0 de R3
		LEA R3,finC		; Chargement pour le saut
		JMP R3			; Saut au label finC pour la fin du compteur

strlen:		AND R1,R1,0		; Le compteur R1 est initialisé à 0
loop: 		LDR R2,R0,0		; Chargement dans R2 du caractere pointé par R0
		BRz char		; Test de sortie de boucle
		ADD R0,R0,1		; Incrémentation du pointeur
		ADD R1,R1,1		; Incrémentation du compteur
		BR loop			; Boucle pour chaque caractere
char:		ADD R0,R1,0		; Mise à 0
		RET			; Fin de la sous-routine

finC:		LEA R3,suite		; Chargement pour le saut
		JSRR R3			; Saut au label suite 


chaine:		.STRINGZ "Hello World"	; Chaîne constante

suite : 	AND R1,R1,0		; Mise à 0
		ADD R1,R1,11		; R1<-11
		NOT R1,R1		; complement a 2
		ADD R1,R1,1		; R1 <- -11
		ADD R3,R0,R1		; R3 <- 11+-11
		BRnp err		; Test de choix de direction

		AND R2,R2,0		; Mise à 0
		LDI R1,var1		; Charge la valeur var1
		ST R1,var2		; Stocke dans var2

		AND R3,R3,0		; Mise à 0
		LD R3,var1		; Charge la valeur de var1
		STI R3,var3		; Stocke l'adresse dans var3

		LEA R4,chaine 		; Charge l'adresse du debut de la chaine
		LD R1,var1		; Charge l'index
		ADD R4,R4,R1		; Chaine + index
		LDR R4,R4,0		; Charge chaine[index]
		STR R4,R4,0		; Stocke dans b

		LEA R3,fin		; Chargement pour le saut
		JMP R3			; Saut final

var1 : 		.FILL 3
var2 : 		.FILL 3
var3 : 		.FILL 3
	
err : 		AND R0,R0,0		; Mise à 0
fin : 		SETB R0,R0,4		; set du bit 4 		1101 000 000 11 0100 : 1101 0000 0011 0100 : d034
		RSTB R0,R0,3		; reset du bit 3 	1101 000 000 10 0011 : 1101 0000 0010 0011 : d023
		NOP	
.END


