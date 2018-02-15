api
apiToggleMarkAtX: xVal Y: yVal
	"Toogle mark"
	
	| tile |
	
	"Validate coordinate"
	BoardException new validateCoordinateBoardX: (self x) BoardY: (self y) X: xVal Y: yVal.
	
	"Toggle if it is possible"
	tile := (self getTileAtX: xVal Y: yVal).
	(tile isOpened)
	ifTrue: [ ^ false ]
	ifFalse: [
		tile toggleMark.
		^ true.
	].
	
	