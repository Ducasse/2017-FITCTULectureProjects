tests
testCardsCount
	|gm|
	gm := GameMap new setMapSize: y and: x; initializeForFields: fields.
	
	self assert: gm cardsCount == (x*y).
	
	