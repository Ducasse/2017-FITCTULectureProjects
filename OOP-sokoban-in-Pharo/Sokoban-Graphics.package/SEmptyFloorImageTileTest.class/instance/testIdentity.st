tests
testIdentity
	|inst1 inst2|
	inst1 := SEmptyFloorImageTile get.
	inst2 := SEmptyFloorImageTile get.
	self assert: (inst1 == inst2)