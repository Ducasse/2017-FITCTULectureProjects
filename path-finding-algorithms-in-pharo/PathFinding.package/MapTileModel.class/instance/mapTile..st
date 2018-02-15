accessing
mapTile: aMapTile
	| listener |	
	listener := TileEventListener new.
	listener mapTileModel: self.
	listener mapModel: self class mapModel.
		
	mapTile := aMapTile.
	mapTile addEventHandler: listener.
	self x: mapTile x y: mapTile y 