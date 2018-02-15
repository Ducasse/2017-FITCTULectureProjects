tests
testAddObject
	| i |
	i := SRTFloor new.
	self assert: i getObject isNil.
	i addObject: SRMOPlayer new.
	self assert: (i getObject isMemberOf: SRMOPlayer).
	i addObject: SRMOBox new.
	self assert: (i getObject isMemberOf: SRMOBox)