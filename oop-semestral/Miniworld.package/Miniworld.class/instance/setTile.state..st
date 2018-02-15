tile handling
setTile: aTile state: aState
	(aState = TileState start)
		ifTrue: [ self setStartTile: aTile ].
	(aState = TileState end)
		ifTrue: [ self setEndTile: aTile ]