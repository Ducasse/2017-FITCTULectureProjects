tests
testInitialize
	|mapTileModel|
	mapTileModel := MapTileModel new.
	self assert: mapTileModel found equals: false.
	self assert: mapTileModel blocked equals: true.
	self assert: mapTileModel onPath equals: false.
	self assert: mapTileModel costToCross equals: 1.
	