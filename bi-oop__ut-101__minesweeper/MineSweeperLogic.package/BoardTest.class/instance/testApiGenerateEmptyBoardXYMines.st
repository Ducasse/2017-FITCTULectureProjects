tests
testApiGenerateEmptyBoardXYMines
	| b |
	b:= Board new.
	b apiGenerateEmptyBoardX: 5 Y: 6 Mines: 24.
	
	
	self assert: (b x) equals: 5.
	self assert: (b y) equals: 6.
	self assert: (b mines) equals: 24.
	self assert: (b initialized) equals: false.