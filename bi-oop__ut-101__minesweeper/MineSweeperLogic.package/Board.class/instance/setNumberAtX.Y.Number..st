setter
setNumberAtX: xVal Y: yVal Number: value
	"Place a new TileBomb at [X:Y]"
	
	"Validate tile"
	BoardException new validateCoordinateBoardX: x BoardY: y X: xVal Y: yVal.
	
	"Set number"
	(board at: yVal) at: xVal put: (TileNumber x: xVal y: yVal number: value).
