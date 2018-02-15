tests
testSetMapSize
	|gm|
	gm := GameMap new setMapSize: x.
	
	self assert: gm getHeigth == x.
	self assert: gm getWidth == x.
	
	