tests
testFinished
   "Get X"

	| board |
	board := Board x: 10 y: 10 mines: 0.
	self assert: (board finished ) equals: false.
	board finished: true.
	self assert: (board finished) equals: true.