utility
convertCoordinates: aPoint
	^ aPoint x @ aPoint y negated + (self size / 2)