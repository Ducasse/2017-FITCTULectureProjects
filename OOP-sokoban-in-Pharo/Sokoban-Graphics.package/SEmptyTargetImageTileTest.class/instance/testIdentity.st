tests
testIdentity
	|inst1 inst2|
	inst1 := SEmptyTargetImageTile get.
	inst2 := SEmptyTargetImageTile get.
	self assert: (inst1 == inst2)