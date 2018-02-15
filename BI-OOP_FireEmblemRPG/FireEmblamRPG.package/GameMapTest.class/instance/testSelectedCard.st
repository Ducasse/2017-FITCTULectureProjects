tests
testSelectedCard
	|gm|
	gm := GameMap new setMapSize: y and: x; initializeForFields: fields.
	
	self assert: gm selectedCard isNil.
	
	gm selectedCard: FieldModel new.
	
	self assert: gm selectedCard isNotNil.
	