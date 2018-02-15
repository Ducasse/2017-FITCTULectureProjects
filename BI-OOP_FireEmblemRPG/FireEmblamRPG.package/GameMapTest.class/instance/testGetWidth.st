tests
testGetWidth
	|gm|
	gm := GameMap new setMapSize: x and: y.
	
	self assert: gm getWidth == x.
	