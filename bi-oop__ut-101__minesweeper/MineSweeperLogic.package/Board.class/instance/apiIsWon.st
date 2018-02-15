api
apiIsWon
	"Is won T/F"
	
	| openedTiles boardSize |
	
	openedTiles := 0.
	
	"Each row"
	1 to: y do: [ :row |
		"Each column"
		1 to: x do: [ :col | 
			"Each tile is empty"
			(self apiIsOpenedAtX: col Y: row) ifTrue: [
				openedTiles := openedTiles + 1.
			].
		].
	].

	boardSize := x * y.
	(boardSize - mines = openedTiles) ifTrue: [
		self finished: true.
		self won: true.
	].
	
	"Return isWon"
	^ self won.