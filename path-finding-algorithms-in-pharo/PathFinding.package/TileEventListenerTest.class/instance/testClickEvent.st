tests
testClickEvent
		|listener mapModel mapTileModel|
	listener := TileEventListener new.
	mapModel := MapModel new.
	listener mapModel: mapModel.	
	mapTileModel := MapTileModel new.
	listener mapTileModel: mapTileModel.
	
	self assert: listener mapModel equals: mapModel.