tests
testMapSize
	|arr map|
	arr := Array new: 5.
	arr atWrap: 1 put: SRTBackground new.
	arr atWrap: 2 put: SRTWall new.
	arr atWrap: 3 put: SRTFloor new.
	arr atWrap: 4 put: SRTTarget new.
	arr atWrap: 5 put: SRTWall new.
	
	map := SMapElement new.
	map createMapWithX: 5 Y: 1 map: arr.
	
	self assert: map xMapSize equals: 5.
	self assert: map yMapSize equals: 1.
	
	self deny: (map xMapSize = 1).
	self deny: (map yMapSize = 5).