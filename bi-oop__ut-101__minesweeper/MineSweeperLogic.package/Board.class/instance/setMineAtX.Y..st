setter
setMineAtX: xVal Y: yVal
	"Place a new TileBomb at [X:Y]"
	
	"Validate tile"
	BoardException new validateCoordinateBoardX: x BoardY: y X: xVal Y: yVal.
	
	"Set"
	(board at: yVal) at: xVal put: (TileMine x: xVal y: yVal).
