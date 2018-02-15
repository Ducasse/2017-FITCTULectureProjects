tests
testXY
	|mapTileModel|
	mapTileModel := MapTileModel new.
	mapTileModel x:1 y:3.
	self assert: mapTileModel x equals: 1.
	self assert: mapTileModel y equals: 3.
	