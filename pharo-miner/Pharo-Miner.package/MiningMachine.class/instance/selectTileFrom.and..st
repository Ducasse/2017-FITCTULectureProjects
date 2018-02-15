physics
selectTileFrom: aTile1 and: aTile2
	(self transform position distanceTo: aTile1 transform position)
		< (self transform position distanceTo: aTile2 transform position)
		ifTrue: [ ^ aTile1 ]
		ifFalse: [ ^ aTile2 ]