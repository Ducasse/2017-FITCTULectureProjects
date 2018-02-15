mouse handlers
clickEvent: anEvent
	| tile |
	tile := anEvent currentTarget.
	
	(mapModel start)
		ifNil: [ self mapTileModel setStartTile: tile.	 ]
		ifNotNil: [ 
			(mapModel end)
				ifNil: [ self mapTileModel setEndTile: tile ]
				ifNotNil: [ 
					self mapModel reset.
					self mapTileModel setStartTile: tile
					 ]
		].
	