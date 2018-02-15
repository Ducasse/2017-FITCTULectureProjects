api
apiMinesCounter
	"Is won T/F"
	
	| markedWithoutMines |
	
	markedWithoutMines := 0.
	
	"Each row"
	1 to: y do: [ :row |
		"Each column"
		1 to: x do: [ :col | 
			"Each tile is empty"
			(self apiIsMarkedAtX: col Y: row) ifTrue: [
				markedWithoutMines := markedWithoutMines + 1.
			].
		].
	].

	markedWithoutMines :=  (self mines) - markedWithoutMines.
	
	"Return quantity of marked - mines"
	(markedWithoutMines < 0) ifTrue: [ ^ 0 ].
	^ markedWithoutMines.