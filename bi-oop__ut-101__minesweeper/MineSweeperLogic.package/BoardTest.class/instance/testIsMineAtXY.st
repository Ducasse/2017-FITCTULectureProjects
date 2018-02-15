tests
testIsMineAtXY
   "Try to place a mine"

	| board xIndex yIndex |
		
	board := Board x: 10 y: 10 mines: 0.
	
	xIndex := (board x) atRandom.
	yIndex := (board y) atRandom.
	
	board setMineAtX: xIndex Y: yIndex.
	self assert: (board getMineQuantityAtX: xIndex Y: yIndex) equals: 1.