existence
existAndClosedTileAtX: xVal Y: yVal

	"Tile exists"
	(self existTileAtX: xVal Y: yVal) ifTrue: [ 
		"Tile is closed"
		(((self getTileAtX: xVal Y: yVal) isOpened) not) ifTrue: [
			((self apiIsMarkedAtX: xVal Y: yVal) not) ifTrue: [ 
				^ true.
			].
		]. 
	].

	^ false.