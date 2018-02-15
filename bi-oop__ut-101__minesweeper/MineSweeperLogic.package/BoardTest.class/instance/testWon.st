tests
testWon
   "Get X"

	| board |
	board := Board x: 10 y: 10 mines: 0.
	self assert: (board won ) equals: false.
	board won: true.
	self assert: (board won) equals: true.