tests
testInitializeWithRank
	| ability |
	ability := Ability withRank: 3.
	self assert: (ability rank = 3).
	self assert: (ability value between: 8 and: 13).