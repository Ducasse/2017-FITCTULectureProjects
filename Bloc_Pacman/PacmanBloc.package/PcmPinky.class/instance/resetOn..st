accessing
resetOn: aMap
	x := 256.
	y := 96.
	self computeCurrentCoordinate: aMap.
	self forceViewRelocate