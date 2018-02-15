tests
testY
   "Get Y"

	| board |
	board := Board x: 10 y: 14 mines: 0.
	self assert: (board y) equals: 14.