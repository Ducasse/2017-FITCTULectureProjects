accessing
displaySize: aPoint
	self size: aPoint.
	displaySize := aPoint.
	self
		background: (BlImageBackground image: (self class imageRepresentation scaledToSize: displaySize))