tests
testIdentity
	|inst1 inst2|
	inst1 := SSokobanOnTargetImageTile get.
	inst2 := SSokobanOnTargetImageTile get.
	self assert: (inst1 == inst2)