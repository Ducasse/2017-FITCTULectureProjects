api
apiIsMarkedAtX: xVal Y: yVal
	"isMarked? T/F"

	"Validate coordinate"
	BoardException new validateCoordinateBoardX: (self x) BoardY: (self y) X: xVal Y: yVal.
	
	"Return isMarked"
	^ ((self getTileAtX: xVal Y: yVal) isMarked).
	
	