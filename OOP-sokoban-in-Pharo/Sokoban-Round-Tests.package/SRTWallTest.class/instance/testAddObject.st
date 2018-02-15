tests
testAddObject
	| i |
	i := SRTWall new.
	self assert: i getObject isNil.
	self assert: (i addObject: SRMOPlayer new) isNil.
	self assert: i getObject isNil