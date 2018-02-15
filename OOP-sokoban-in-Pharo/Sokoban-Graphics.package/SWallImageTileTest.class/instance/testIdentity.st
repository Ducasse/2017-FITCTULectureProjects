tests
testIdentity
	|inst1 inst2|
	inst1 := SWallImageTile get.
	inst2 := SWallImageTile get.
	self assert: (inst1 == inst2)