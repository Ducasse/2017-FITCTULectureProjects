tests
testX
	| mapTile |
	mapTile := MapTile new.
	mapTile x: 1.
	self assert: mapTile x equals: 1.