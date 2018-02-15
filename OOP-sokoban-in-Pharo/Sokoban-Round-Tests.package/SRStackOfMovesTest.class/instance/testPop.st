tests
testPop
	| i |
	i := SRStackOfMoves new.
	i push: 5.
	i push: 2.
	self assert: i pop = 2.
	self assert: i pop = 5.
	i push: 3.
	i push: 1.
	i push: 4.
	self assert: i pop = 4.
	self assert: i pop = 1.
	self assert: i pop = 3.
	self assert: i pop isNil.