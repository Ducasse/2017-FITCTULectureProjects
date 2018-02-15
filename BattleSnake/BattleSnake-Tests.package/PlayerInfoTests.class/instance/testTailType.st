tests
testTailType
	| s |
	s := PlayerInfo new.
	s tailType:  'curled'.
	self assert: s tailType  equals: 'curled'