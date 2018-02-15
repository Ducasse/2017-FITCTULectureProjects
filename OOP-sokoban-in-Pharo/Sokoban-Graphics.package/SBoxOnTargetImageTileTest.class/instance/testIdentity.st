tests
testIdentity
	|inst1 inst2|
	inst1 := SBoxOnTargetImageTile get.
	inst2 := SBoxOnTargetImageTile get.
	self assert: (inst1 == inst2)