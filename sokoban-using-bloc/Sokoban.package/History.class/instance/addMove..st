adding
addMove: aMove
	"Clear all moves after current position in history and add the new one"

	[ current < moves size ] whileTrue: [ moves removeLast ].
	moves add: aMove.
	current := current + 1.