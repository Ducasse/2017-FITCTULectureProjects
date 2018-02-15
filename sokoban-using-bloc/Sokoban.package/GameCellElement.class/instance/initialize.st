initialization
initialize
	super initialize.
	self displaySize: self class cellSize.
	self background: (BlImageBackground image: self class imageRepresentation)