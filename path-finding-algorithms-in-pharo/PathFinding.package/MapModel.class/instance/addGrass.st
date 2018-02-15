adding
addGrass
	| mapTileModel tile |
	2 to: tiles rowCount - 1 do: [ :i | 2 to: tiles columnCount - 1 do: [ :j | 
			mapTileModel := MapTileModelGrass new.
			tile := MapTileGrass new.
			tile x: i y: j.
			mapTileModel mapTile: tile.
			tiles at: i at: j put: mapTileModel ] ]