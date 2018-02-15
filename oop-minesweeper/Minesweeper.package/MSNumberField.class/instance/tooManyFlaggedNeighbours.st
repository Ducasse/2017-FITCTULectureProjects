actions
tooManyFlaggedNeighbours
	"This method determines whether there are more neighbours flagged than there are adjacent mines"
	| flagged |
	flagged := 0.

	neighbours do: [ :field |
		field marked
			ifTrue: [ flagged := flagged + 1 ]
	].

	^ (flagged > number)
