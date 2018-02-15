tests
testExistTileAtXY
	| b |
	
	b:= Board new.
	b apiGenerateEmptyBoardX: 5 Y: 5 Mines: 3.
	
	self assert: (b existTileAtX: 1 Y: 1).
	self assert: (b existTileAtX: 5 Y: 5).
	self assert: (b existTileAtX: 0 Y: 1) equals: false.
	self assert: (b existTileAtX: 1 Y: 0) equals: false.
	self assert: (b existTileAtX: 6 Y: 5) equals: false.
	self assert: (b existTileAtX: 5 Y: 6) equals: false.