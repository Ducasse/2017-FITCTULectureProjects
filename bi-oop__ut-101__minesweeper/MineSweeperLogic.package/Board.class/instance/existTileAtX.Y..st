existence
existTileAtX: xCoord Y: yCoord
	((xCoord <= 0) | (self x < xCoord ) | (yCoord <= 0) | (self y < yCoord )) 
	ifTrue: [ ^false.].
	^ true.