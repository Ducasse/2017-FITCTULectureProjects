tests
testUniqueInstance
	MineSweeper clearInstance.
	self assert: (MineSweeper uniqueInstance isNil not)