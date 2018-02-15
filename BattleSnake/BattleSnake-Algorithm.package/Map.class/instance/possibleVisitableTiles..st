collecting moves
possibleVisitableTiles: aPoint
	| returnList |
	returnList := LinkedList new.
	possibleMoves
		do: [ :move | 
			| newIndex |
			newIndex := aPoint + move value.
			(self isValidIndex: newIndex)
				ifTrue: [ | tile |
					tile := (tiles at: newIndex x) at: newIndex y.
					(tile canBeAccessed and: (tile visited not))
						ifTrue: [ tile visited: true.
							returnList add: move key -> newIndex ] ] ].
	^ returnList