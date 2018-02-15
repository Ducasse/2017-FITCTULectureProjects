tests
testCellSize
	| s |
	s := GridScene new.
	s cellSize: 123@123.
	self assert: s cellSize equals: 123@123