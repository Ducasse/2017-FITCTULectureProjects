tests
testXY
	| mapTile |
	mapTile := MapTile new.
	mapTile x: 1 y: 1.
	self assert: mapTile x equals: 1.
	self assert: mapTile y equals: 1.