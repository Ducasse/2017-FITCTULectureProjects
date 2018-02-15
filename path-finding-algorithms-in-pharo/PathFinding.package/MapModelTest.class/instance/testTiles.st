tests
testTiles
	|mapModel|
	mapModel := MapModel new.
	self assert: mapModel tiles class equals:  Matrix.
	