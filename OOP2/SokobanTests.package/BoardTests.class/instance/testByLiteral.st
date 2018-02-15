tests
testByLiteral
	self assert: (Board new byLiteral: 'f') class equals: Floor.
	self assert: (Board new byLiteral: 'w') class equals: Wall.
	self assert: (Board new byLiteral: 'p') class equals: Player.
	self assert: (Board new byLiteral: 'b') class equals: Box.
	self assert: (Board new byLiteral: 't') class equals: Target 