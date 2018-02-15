accessing
resetOn: aMap
	x := 160.
	y := 96.
	self computeCurrentCoordinate: aMap.
	self forceViewRelocate.