private
isValidIndex: aPoint
	^ (aPoint x between: 1 and: sizeX) and: (aPoint y between: 1 and: sizeY)