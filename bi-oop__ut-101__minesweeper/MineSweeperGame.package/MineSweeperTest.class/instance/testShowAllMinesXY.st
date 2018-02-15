tests
testShowAllMinesXY
	|tile mineCoord|
	
	mineCoord := Coordinate new.
	MineSweeper x: 10 y: 11 mines: 12.
	
	MineSweeper uniqueInstance board apiOpenAtX: 1 Y: 1. "set mines"
	1 to: 10 do: [ :x | "find first mine"
		1 to: 11 do: [ :y |
			(MineSweeper uniqueInstance board isMineAtX: x Y: y) ifTrue:  [ 
				mineCoord x: x; y: y]]].
	MineSweeper uniqueInstance showAllMinesX: mineCoord x y: mineCoord y. "show mines"
	MineSweeper uniqueInstance ui uiBoard children do: [ :elem |
		tile := MineSweeper uniqueInstance board apiGetTileReferenceAtX: (elem coord x) Y: (elem coord y).
		((elem coord x = mineCoord x) & (elem coord y = mineCoord y))
			ifTrue: [ (tile isTileMine) ifTrue: [ self assert: elem color equals: (Color red);
																	assert: elem isClicked]]
			ifFalse: [ (tile isTileMine) ifTrue: [ self assert: elem isClicked ]]
	].