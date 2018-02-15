tests
testMoveFromTo
	|gm c1 c2|
	gm := GameMap new setMapSize: y and: x; initializeForFields: fields.
	c1 := gm getCardOnY: 2 andX: 3.
	c2 := gm getCardOnY: 3 andX: 3.
	
	self assert: c1 field type == Enum road.
	self assert: c2 field type == Enum wall.
	
	gm moveFrom: c1 to: c2.
	c1 := gm getCardOnY: 2 andX: 3.
	c2 := gm getCardOnY: 3 andX: 3.
	
	self assert: c1 field type == Enum wall.
	self assert: c2 field type == Enum road.