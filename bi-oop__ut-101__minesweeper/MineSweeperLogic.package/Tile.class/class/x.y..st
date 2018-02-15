instance creation
x: xCoord y: yCoord
	^ self new
		setCoordinateX: xCoord Y: yCoord;
		close;
		unmark;
		yourself.