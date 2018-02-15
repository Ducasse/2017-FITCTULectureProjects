gameLogic tests
testAttackWithCurrentUnitOnSquare
	| gameBoard p1 p2 unit1 unit2 unit3 unit1HP unit2HP unit3HP |
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
	unit1HP := unit1 health - unit2 attack.
	unit2HP := unit2 health - unit1 attack.
	unit3HP := unit3 health.
	gameBoard attackWithCurrentUnitOnSquare: (gameBoard getSquare: (2@3)).
	self assert: (unit1 health) equals:  unit1HP.
	self assert: (unit2 health) equals:  unit2HP.
	self assert: (unit3 health) equals:  unit3HP.
	