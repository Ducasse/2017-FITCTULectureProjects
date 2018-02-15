private
countMines: aGrid
	| mineCount |
	mineCount := 0.
	aGrid do: [ :field |
		(field isMine) ifTrue: [ mineCount := mineCount + 1 ]
	].

	^ mineCount.