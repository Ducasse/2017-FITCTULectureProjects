tests
testImageFileName
	| mapTile |
	mapTile := MapTile new.
	self assert: mapTile imageFileName equals: nil.