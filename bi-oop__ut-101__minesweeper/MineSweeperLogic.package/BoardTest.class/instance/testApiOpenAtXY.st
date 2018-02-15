tests
testApiOpenAtXY
	| b |
	b:= Board new.
	b apiGenerateEmptyBoardX: 5 Y: 6 Mines: 24.
	b apiOpenAtX: 2 Y: 2.
	
	self assert: (b x) equals: 5.
	self assert: (b y) equals: 6.
	self assert: (b mines) equals: 24.
	self assert: (b getTileAtX: 2 Y: 2) isOpened.
	self assert: (b initialized).