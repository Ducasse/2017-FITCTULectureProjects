tests
testIdentity
	|inst1 inst2|
	inst1 := SBoxOnFloorImageTile get.
	inst2 := SBoxOnFloorImageTile get.
	self assert: (inst1 == inst2)