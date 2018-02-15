tile handling
setStartTile: aTile
	startTile ifNotNil: [ startTile state: TileState undiscovered ].
	startTile := aTile.
	startTile ifNotNil: [ 
			startTile state: TileState start.
			algorithm startRow: aTile y column: aTile x.
	]