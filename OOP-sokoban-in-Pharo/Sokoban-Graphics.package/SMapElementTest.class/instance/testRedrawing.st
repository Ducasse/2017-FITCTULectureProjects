tests
testRedrawing
	|arr map|
	arr := Array new: 5.
	arr atWrap: 1 put: SRTBackground new.
	arr atWrap: 2 put: SRTWall new.
	arr atWrap: 3 put: SRTFloor new.
	arr atWrap: 4 put: SRTTarget new.
	arr atWrap: 5 put: SRTWall new.
	
	map := SMapElement new.
	map createMapWithX: 5 Y: 1 map: arr.
	
	self shouldnt: (map redrawElementBoxOn: 1 And: 3) raise: Error.
	self shouldnt: (map redrawElementBoxOn: 1 And: 4) raise: Error.
	self should: [map redrawElementBoxOn: 1 And: 5] raise: Error.
	self should: [map redrawElementBoxOn: 1 And: 1] raise: Error.
	self should: [map redrawElementBoxOn: 1 And: 2] raise: Error.