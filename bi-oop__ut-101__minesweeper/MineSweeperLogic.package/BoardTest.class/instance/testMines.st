tests
testMines
   "Check if board generates right amount of mines"
	| b |
	b := Board x: 3 y: 3 mines: 3.
	self assert: b mines equals: 3.