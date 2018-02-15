tests
testMapModel
	|listener mapModel|
	listener := TileEventListener new.
	mapModel := MapModel new.
	listener mapModel: mapModel.
	self assert: listener mapModel equals: mapModel.