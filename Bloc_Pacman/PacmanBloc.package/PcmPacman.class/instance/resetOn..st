accessing
resetOn: aMap
	x := 32.
	y := 32.
	self computeCurrentCoordinate: aMap.
	self forceViewRelocate.