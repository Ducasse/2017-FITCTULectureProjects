tests
testClearing
	|arr map|
	arr := Array new: 5.
	arr atWrap: 1 put: SRTBackground new.
	arr atWrap: 2 put: SRTWall new.
	arr atWrap: 3 put: SRTFloor new.
	arr atWrap: 4 put: SRTTarget new.
	arr atWrap: 5 put: SRTWall new.
	
	map := SMapElement new.
	self assert: map childrenCount equals: 0.
	map createMapWithX: 5 Y: 1 map: arr.
	self assert: map childrenCount equals: 5.
	map clear.
	self assert: map childrenCount equals: 0.