tests
testSetMapSizeAnd
	|gm|
	gm := GameMap new setMapSize: x and: y.
	
	self assert: gm getWidth == x.
	self assert: gm getHeigth == y.
	
	