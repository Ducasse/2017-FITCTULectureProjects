initialization
initialize
	super initialize.
	coveredColor := Color gray.
	uncoveredColor := Color lightGray.
	fieldSize := 20@20.
	self size: fieldSize.