accessing
battleField: newBattlefield
	battleField := newBattlefield.

	self layout columnCount: battleField gridSize + 1.
	battleField map 
		do: [ :tile | 
				|tileElement | 
				tileElement  := self newMapTileElement mapTile: tile.
				tileElement addEventHandler: (self newMapTileEventListener
				gameManager: battleField gameManager).
				self addChild: tileElement ]