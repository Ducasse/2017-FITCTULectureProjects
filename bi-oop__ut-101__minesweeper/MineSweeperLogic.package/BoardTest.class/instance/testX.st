tests
testX
   "Get X"

	| board |
	board := Board x: 10 y: 10 mines: 0.
	self assert: (board x) equals: 10.