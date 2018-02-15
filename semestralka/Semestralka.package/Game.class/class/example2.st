examples
example2
	| gameView game gameBoard p1 p2 unit1 unit2 unit3 unit4 unit5 unit6 unit7 unit8 unit9 |
	
	"setting game elements"
	"-----------------------------------"
	p1 := PlayerHuman new playerName: 'Marge' ; race: 'Human'.
	p2 := PlayerHuman new playerName: 'Homer' ; race: 'Orc'.
	
	unit1 := Unit new  playerOwner: p1 ; unitType: UnitTypeArcher. unit1 health: (unit1 unitType maxHp).
	unit2 := Unit new  playerOwner: p1 ; unitType: UnitTypeArcher. unit2 health: (unit2 unitType maxHp).
	unit3 := Unit new  playerOwner: p1 ; unitType: UnitTypeSoldier. 	unit3 health: (unit3 unitType maxHp).
	
	unit4 := Unit new  playerOwner: p2 ; unitType: UnitTypeSoldier. unit4 health: (unit4 unitType maxHp).
	unit5 := Unit new  playerOwner: p2 ; unitType: UnitTypeArcher. unit5 health: (unit5 unitType maxHp).
	unit6 := Unit new  playerOwner: p2 ; unitType: UnitTypeSoldier. 	unit6 health: (unit6 unitType maxHp).
	unit7 := Unit new  playerOwner: p2 ; unitType: UnitTypeSoldier. 	unit7 health: (unit7 unitType maxHp).
	unit8 := Unit new  playerOwner: p2 ; unitType: UnitTypeSoldier. 	unit8 health: (unit8 unitType maxHp).
	unit9 := Unit new  playerOwner: p2 ; unitType: UnitTypeSoldier. 	unit9 health: (unit9 unitType maxHp).
	
	gameBoard := GameBoard createWithWidth: 10 andHeight: 10 ObsticalChance: 0.
	gameBoard
		addUnit: unit1 atPosition: (7@1);
		addUnit: unit7 atPosition: (5@3);
		addUnit: unit2 atPosition: (8@2);
		addUnit: unit4 atPosition: (1@1);
		addUnit: unit3 atPosition: (8@9);
		addUnit: unit8 atPosition: (4@4);
		addUnit: unit5 atPosition: (3@1);
		addUnit: unit9 atPosition: (2@2);
		addUnit: unit6 atPosition: (1@3).
	gameBoard
		addTerrain: Water atPosition: (1@10); addTerrain: Water atPosition: (2@10); addTerrain: Water atPosition: (3@10);
		addTerrain: Water atPosition: (4@10); addTerrain: Water atPosition: (5@10); addTerrain: Water atPosition: (1@9);
		addTerrain: Water atPosition: (2@9); addTerrain: Water atPosition: (3@9); addTerrain: Water atPosition: (4@9);
		addTerrain: Water atPosition: (5@9); addTerrain: Water atPosition: (1@8); addTerrain: Water atPosition: (2@8);
		addTerrain: Water atPosition: (3@8); addTerrain: Water atPosition: (4@8); addTerrain: Water atPosition: (5@8); 
		addTerrain: Water atPosition: (1@7); addTerrain: Water atPosition: (2@7); addTerrain: Water atPosition: (3@7);
		addTerrain: Water atPosition: (4@7); addTerrain: Water atPosition: (5@7).
	gameBoard
		addTerrain: Sand atPosition: (1@7); addTerrain: Sand atPosition: (2@7); addTerrain: Sand atPosition: (3@7);
		addTerrain: Sand atPosition: (4@7); addTerrain: Sand atPosition: (5@7); addTerrain: Sand atPosition: (6@8);
		addTerrain: Sand atPosition: (5@10); addTerrain: Sand atPosition: (6@10); addTerrain: Sand atPosition: (7@10);
		addTerrain: Sand atPosition: (8@10); addTerrain: Sand atPosition: (9@10); addTerrain: Sand atPosition: (10@10);
		addTerrain: Sand atPosition: (5@9); addTerrain: Sand atPosition: (6@9); addTerrain: Sand atPosition: (7@9).
	gameBoard
		addTerrain: Rock atPosition: (10@6); addTerrain: Rock atPosition: (9@6);
		addTerrain: Rock atPosition: (10@5); addTerrain: Rock atPosition: (9@5); addTerrain: Rock atPosition: (8@5);
		addTerrain: Rock atPosition: (10@4); addTerrain: Rock atPosition: (9@4).
	gameBoard
		addTerrain: Rock atPosition: (2@5); addTerrain: Tree atPosition: (4@4); addTerrain: Rock atPosition: (3@6);
		addTerrain: Tree atPosition: (6@5); addTerrain: Tree atPosition: (6@1); addTerrain: Tree atPosition: (7@1);
		addTerrain: Tree atPosition: (8@3); addTerrain: Tree atPosition: (10@2); addTerrain: Tree atPosition: (7@2);
		addTerrain: Tree atPosition: (7@1); addTerrain: Tree atPosition: (6@3); addTerrain: Tree atPosition: (8@3).


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
	
