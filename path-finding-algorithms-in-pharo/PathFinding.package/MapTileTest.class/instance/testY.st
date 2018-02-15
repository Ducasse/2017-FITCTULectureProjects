tests
testY
	| mapTile |
	mapTile := MapTile new.
	mapTile y: 1.
	self assert: mapTile y equals: 1.