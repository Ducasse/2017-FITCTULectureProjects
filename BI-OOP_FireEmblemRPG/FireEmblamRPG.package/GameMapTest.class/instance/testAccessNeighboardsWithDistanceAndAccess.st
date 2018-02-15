tests
testAccessNeighboardsWithDistanceAndAccess
	|gm card c1 c2 c3 c4|
	gm := GameMap new setMapSize: y and: x; initializeForFields: fields.
	card := gm getCardOnY: 2 andX: 3.
	gm accessNeighboards: card withDistance: 1 andAccess: 0.
	
	c1 := gm getCardOnY: 1 andX: 3.
	c2 := gm getCardOnY: 3 andX: 3.
	c3 := gm getCardOnY: 2 andX: 2.
	c4 := gm getCardOnY: 2 andX: 4.

	self assert: card field accessable not.
	self assert: c1 field accessable not.
	self assert: c2 field accessable not.
	self assert: c3 field accessable.
	self assert: c4 field accessable.