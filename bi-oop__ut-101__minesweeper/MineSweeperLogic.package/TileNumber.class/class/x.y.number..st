instance creation
x: xCoord y: yCoord number: value
	^ self new
		setCoordinateX: xCoord Y: yCoord;
		number: value;
		close;
		unmark;
		yourself.