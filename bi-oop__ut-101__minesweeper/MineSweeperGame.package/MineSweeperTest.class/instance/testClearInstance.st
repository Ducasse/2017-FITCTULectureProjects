tests
testClearInstance
	| instance |
	MineSweeper clearInstance.
	instance := MineSweeper uniqueInstance.
	MineSweeper clearInstance.
	self assert: instance ~~ MineSweeper uniqueInstance