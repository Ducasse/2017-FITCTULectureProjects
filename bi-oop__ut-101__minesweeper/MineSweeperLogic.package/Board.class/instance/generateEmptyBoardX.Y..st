generator
generateEmptyBoardX: xVal Y: yVal
	"Generates a new board with Empty tiles"
	
	"Validate board size"
	BoardException new validateBoardSizeX: xVal Y: yVal.
	
	"Set board size"
	self x: xVal.
	self y: yVal.
	
	"Set finished param"
	self finished: false.
	self won: false.

	"Set new board tiles"
	board := OrderedCollection new.
	
	"Create rows"
	1 to: y do: [ :row | 
		board add: OrderedCollection new.
		"Create columns"
		1 to: x do: [ :col | 
			"Each tile is empty"
			(board at: row) add: (TileEmpty x: col y: row).
		].
	].
