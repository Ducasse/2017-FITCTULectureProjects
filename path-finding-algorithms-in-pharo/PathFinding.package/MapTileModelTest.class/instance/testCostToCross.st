tests
testCostToCross
	|mapTileModel|
	mapTileModel := MapTileModel new.
	mapTileModel costToCross: 4.
	self assert: mapTileModel costToCross equals: 4.
	