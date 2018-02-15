tests
testExistAndClosedTileAtXY
	| b |
	
	b:= Board new.
	b apiGenerateEmptyBoardX: 5 Y: 5 Mines: 3.
	(b getTileAtX: 1 Y: 2) open.
	(b getTileAtX: 2 Y: 3) open.
	(b getTileAtX: 3 Y: 5) open.
	
	self assert: (b existAndClosedTileAtX: 1 Y: 1).
	self assert: (b existAndClosedTileAtX: 5 Y: 5).
	self assert: (b existAndClosedTileAtX: 0 Y: 1) equals: false.
	self assert: (b existAndClosedTileAtX: 1 Y: 2) equals: false.
	self assert: (b existAndClosedTileAtX: 2 Y: 3) equals: false.
	self assert: (b existAndClosedTileAtX: 3 Y: 5) equals: false.