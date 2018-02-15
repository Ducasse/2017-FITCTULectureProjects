tile handling
setEndTile: aTile
	endTile ifNotNil: [ endTile state: TileState undiscovered ].
	endTile := aTile.
	endTile ifNotNil: [
		endTile state: TileState end.
		algorithm targetRow: aTile y.
		algorithm targetColumn: aTile x.
		algorithm isSetEnd: true ]