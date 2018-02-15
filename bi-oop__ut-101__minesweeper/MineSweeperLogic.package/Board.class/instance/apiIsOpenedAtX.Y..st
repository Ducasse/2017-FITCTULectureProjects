api
apiIsOpenedAtX: xVal Y: yVal
	"isOpened? T/F"

	"Validate coordinate"
	BoardException new validateCoordinateBoardX: (self x) BoardY: (self y) X: xVal Y: yVal.
	
	"Return isOpened"
	^ ((self getTileAtX: xVal Y: yVal) isOpened).
	
	