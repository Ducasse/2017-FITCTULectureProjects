tests
testApiToggleMarkAtXY
	| b |
	b:= Board new.
	b apiGenerateEmptyBoardX: 5 Y: 6 Mines: 24.
	
	self assert: (b getTileAtX: 2 Y: 2) isMarked equals: false.
	self assert: (b getTileAtX: 4 Y: 3) isMarked equals: false.
	
	b apiToggleMarkAtX: 4 Y:3.
	self assert: (b getTileAtX: 4 Y: 3) isMarked equals: true.
	b apiToggleMarkAtX: 4 Y:3.
	self assert: (b getTileAtX: 4 Y: 3) isMarked equals: false.
	b apiToggleMarkAtX: 4 Y:3.
	self assert: (b getTileAtX: 4 Y: 3) isMarked equals: true.