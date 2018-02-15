tests
testSetNumberAtXYNumber
   "Try to place a number"

	| board xIndex yIndex |
		
	board := Board x: 10 y: 10 mines: 0.
	
	xIndex := (board x) atRandom.
	yIndex := (board y) atRandom.
	
	board setNumberAtX: xIndex Y: yIndex Number: 5.
	self assert: (board getTileAtX: xIndex Y: yIndex) isTileNumber.