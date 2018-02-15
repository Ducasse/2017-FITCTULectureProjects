examples
example1
	| gameView gameRPG gameBoard p1 p2 unit1 unit2 unit3 |
	
	"setting game elements"
	"-----------------------------------"
	p1 := PlayerHuman new playerName: 'Homer' ; race: 'Orc'.
	p2 := PlayerAI new playerName: 'Marge' ; race: 'Human'.
	
	unit1 := Unit new  playerOwner: p1 ; unitType: UnitTypeSoldier.
	unit2 := Unit new  playerOwner: p2 ; unitType: UnitTypeArcher.
	unit3 := Unit new  playerOwner: p1 ; unitType: UnitTypeArcher.
	
	gameBoard := GameBoard createWithWidth: 5 andHeight: 5 ObsticalChance: 0.
	gameBoard
		addUnit: unit1 atPosition: (1@2);
		addUnit: unit2 atPosition: (2@3);
		addUnit: unit3 atPosition: (3@4).
	
	gameBoard printOnTranscript.
		
	gameRPG := GameRPG new.
	gameRPG gameBoard: gameBoard.
	gameRPG addPlayer: p1 ; addPlayer: p2.
	gameRPG startGame.
	"-----------------------------------"
	
	"setting graphics stuff"
	"-----------------------------------"
	BlUniverse reset.
	gameView := GameElement openModel: gameBoard.
	"-----------------------------------"