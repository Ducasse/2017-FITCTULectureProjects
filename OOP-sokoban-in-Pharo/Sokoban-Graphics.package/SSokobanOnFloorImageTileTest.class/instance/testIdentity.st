tests
testIdentity
	|inst1 inst2|
	inst1 := SSokobanOnFloorImageTile get.
	inst2 := SSokobanOnFloorImageTile get.
	self assert: (inst1 == inst2)