searching in game board tests
testAddUnitAtPosition
	| gameBoard p1 p2 unit1 unit2 unit3  |
	"settings elements"
	"-------------------------------------------------------------------"
	p1 := PlayerHuman new playerName: 'Homer' ; race: 'Orc'.
	p2 := PlayerHuman new playerName: 'Marge' ; race: 'Human'.
	unit1 := Unit new  playerOwner: p1 ; unitType: UnitTypeSoldier.
	unit1 health: (unit1 unitType maxHp).
	unit2 := Unit new  playerOwner: p2 ; unitType: UnitTypeArcher.
	unit2 health: (unit2 unitType maxHp).
	unit3 := Unit new  playerOwner: p1 ; unitType: UnitTypeArcher.
	unit3 health: (unit3 unitType maxHp).
	
	gameBoard := GameBoard createWithWidth: 5 andHeight: 5 ObsticalChance: 0.
	gameBoard
		addUnit: unit1 atPosition: (1@3);
		addUnit: unit2 atPosition: (2@3);
		addUnit: unit3 atPosition: (2@4).
	
	"actual tests"
	"-------------------------------------------------------------------"
	self assert: ((gameBoard getSquare:(1@3)) getObject) equals: unit1.
	self assert: ((gameBoard getSquare:(2@3)) getObject) equals: unit2.
	self assert: ((gameBoard getSquare:(2@4)) getObject) equals: unit3.
	