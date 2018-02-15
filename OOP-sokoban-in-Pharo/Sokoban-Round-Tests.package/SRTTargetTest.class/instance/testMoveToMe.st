tests
testMoveToMe
	| i |
	i := SRTTarget new.
	self assert: i moveToMe = 3.
	i addObject: SRMOBox new.
	self assert: i moveToMe = 2