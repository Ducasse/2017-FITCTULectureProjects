tests
testInitialize
	| mapTile |
	mapTile := MapTile new.
	self assert: mapTile found equals: false.
	self assert: mapTile onPath equals: false.
	self assert: mapTile selected equals: false.
	self assert: mapTile x equals: nil.
	self assert: mapTile y equals: nil.
	self assert: mapTile imageFileName equals: nil. 