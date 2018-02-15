tests
testMapTileModel
	|listener mapTileModel|
	listener := TileEventListener new.
	mapTileModel := MapTileModel new.
	listener mapTileModel: mapTileModel.
	self assert: listener mapTileModel equals: mapTileModel.