tests
testInitialize
	| ability |
	ability := Ability new.
	self assert: (ability rank = 0).
	self assert: (ability value = 0).