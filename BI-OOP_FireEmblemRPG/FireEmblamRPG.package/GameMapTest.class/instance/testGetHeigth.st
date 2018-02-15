tests
testGetHeigth
	|gm|
	gm := GameMap new setMapSize: x and: y.
	
	self assert: gm getHeigth == y.
	