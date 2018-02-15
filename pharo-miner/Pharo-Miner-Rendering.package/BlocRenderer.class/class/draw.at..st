rendering
draw: anImage at: aPoint
	anImage hasParent
		ifFalse: [ container addChild: anImage blElement ].
	(aPoint = anImage previousPosition)
		ifFalse: [ anImage blElement relocate: aPoint ]