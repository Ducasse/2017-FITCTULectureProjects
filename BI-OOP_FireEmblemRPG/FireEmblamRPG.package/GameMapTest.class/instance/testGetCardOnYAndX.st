tests
testGetCardOnYAndX
	|gm card|
	gm := GameMap new setMapSize: y and: x; initializeForFields: fields.
	card := gm getCardOnY: 2 andX: 5. "in initialize each second card is road"
	self assert: card field type == Enum road.
	