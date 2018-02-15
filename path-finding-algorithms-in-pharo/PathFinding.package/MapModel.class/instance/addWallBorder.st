adding
addWallBorder
	| mapTileModel mapTile |
	1 to: tiles columnCount do: [ :i | 
		mapTileModel := MapTileModelWall new.
		mapTile := MapTileWall new.
		mapTile x: 1 y: i.
		mapTileModel mapTile: mapTile.
		tiles at: 1 at: i put: mapTileModel ].
	1 to: tiles columnCount do: [ :i | 
		mapTileModel := MapTileModelWall new.
		mapTile := MapTileWall new.
		mapTile x: tiles y: i.
		mapTileModel mapTile: mapTile.
		tiles at: tiles rowCount at: i put: mapTileModel ].
	1 to: tiles rowCount do: [ :i | 
		mapTileModel := MapTileModelWall new.
		mapTile := MapTileWall new.
		mapTile x: i y: 1.
		mapTileModel mapTile: mapTile.
		tiles at: i at: 1 put: mapTileModel ].
	1 to: tiles rowCount do: [ :i | 
		mapTileModel := MapTileModelWall new.
		mapTile := MapTileWall new.
		mapTile x: i y: tiles.
		mapTileModel mapTile: mapTile.
		tiles at: i at: tiles columnCount put: mapTileModel ]