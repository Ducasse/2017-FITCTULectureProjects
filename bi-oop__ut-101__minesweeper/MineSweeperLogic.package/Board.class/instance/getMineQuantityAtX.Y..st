getter
getMineQuantityAtX: xVal Y: yVal
	"Get quantity of mines at tile X:Y (0 or 1)"
	
	"If coord isn't out of board"
	((xVal between: 1 and: self x) & (yVal between: 1 and: self y)) ifTrue: [ 
		"And if the tile is a Mine"
		((self getTileAtX: xVal Y: yVal) isTileMine) ifTrue: [ 
			^ 1.
		].
	].
	
	^ 0.