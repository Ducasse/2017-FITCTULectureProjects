getter
getTileAtX: xVal Y: yVal
	"Return a tile reference at [X:Y]"
	
	"Validate coordinate"
	BoardException new validateCoordinateBoardX: x BoardY: y X: xVal Y: yVal.
	
	"Return reference"
	^ (board at: yVal) at: xVal.