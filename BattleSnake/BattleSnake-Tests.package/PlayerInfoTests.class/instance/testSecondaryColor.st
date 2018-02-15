tests
testSecondaryColor
	| s |
	s := PlayerInfo new.
	s secondaryColor: 'gold'.
	self assert: s secondaryColor equals: 'gold'