tests
testTaunt
	| s |
	s := PlayerInfo new.
	s taunt: 'git gud'.
	self assert: s taunt equals: 'git gud'