tests
testBlocked
	|mapTileModel|
	mapTileModel := MapTileModel basicNew.
	mapTileModel blocked: false.
	self assert: mapTileModel blocked equals: false.
	