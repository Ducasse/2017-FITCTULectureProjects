is
isMineAtX: xVal Y: yVal
	"Is X:Y a mine?"

	"If coord isn't out of board"
	((xVal between: 1 and: self x) & (yVal between: 1 and: self y)) ifTrue: [ 
		"And if the tile is a Mine"
		((self getTileAtX: xVal Y: yVal) isTileMine) ifTrue: [ 
			^ true.
		].
	].
	
	^ false.