api
apiOpenAtX: xVal Y: yVal
	"Reuturn false if tile is already opened, or true after success opening."

	"Validate coordinate"

	BoardException new
		validateCoordinateBoardX: x
		BoardY: y
		X: xVal
		Y: yVal.

	"Dont click on marked tile"
	(self getTileAtX: xVal Y: yVal) isMarked
		ifTrue: [ ^ true ].

	"First click - need to generate mines"
	self initialized
		ifFalse: [ "Toggle"
			self initialized: true.
			"Generate mines"
			self generateMinesExceptX: xVal ExceptY: yVal.
			"Set numbers"
			self generateNumbers.
			"Start timer"
			MSTimer start ].

	"Open"
	^ self openRecursiveAtX: xVal Y: yVal