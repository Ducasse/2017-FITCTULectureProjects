examples
example1
	| gameView game gameBoard p1 p2 "unit1 unit2 unit3" |
	p1 := PlayerHuman new playerName: 'Homer' ; race: 'Orc'.
	p2 := PlayerHuman new playerName: 'Marge' ; race: 'Human'."
	unit1 := Unit new  playerOwner: p1 ; unitType: UnitTypeSoldier.
	unit1 health: (unit1 unitType maxHp).
	unit2 := Unit new  playerOwner: p2 ; unitType: UnitTypeArcher.
	unit2 health: (unit2 unitType maxHp).
	unit3 := Unit new  playerOwner: p1 ; unitType: UnitTypeArcher.
	unit3 health: (unit2 unitType maxHp).

	gameBoard := GameBoard createWithWidth: 5 andHeight: 5 ObsticalChance: 0.
	gameBoard
		addUnit: unit1 atPosition: (1@2);
		addUnit: unit2 atPosition: (2@3)."
	
	gameBoard := GameBoard loadFromFile: 'map1.txt' playerHuman: p2 playerOrc: p1.

	"setting graphics stuff"
	"-----------------------------------"
	BlUniverse reset.
	gameView := GameElement openModel: gameBoard.
	"-----------------------------------"
		
	game := self new.
	game activeGameBoard: gameBoard.
	game playerOrc: p1 ; playerHuman: p2.
	game startGame.
	"-----------------------------------"