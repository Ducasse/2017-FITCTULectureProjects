tests
testLiteral
	self assert: Wall new literal equals: 'w'.
	self assert: Floor new literal equals: 'f'.
	self assert: Target new literal equals: 't'.
	self assert: Player new literal equals: 'p'.
	self assert: Box new literal equals: 'b'.