initialization
initialize
	tiles := Matrix rows: 16 columns: 24 element: MapTileModel.
	MapTileModel subclassesDo: [ :subclass | subclass mapModel: self ].
	self addGrass.
	self addWallBorder.
	self addRandomWalls.
	self addRandomWaterAndSwamp.
	start := nil.
	end   := nil.
	