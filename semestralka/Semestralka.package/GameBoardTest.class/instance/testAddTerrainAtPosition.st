searching in game board tests
testAddTerrainAtPosition
	| gameBoard  |
	"settings elements"
	"-------------------------------------------------------------------"	
	gameBoard := GameBoard createWithWidth: 5 andHeight: 5 ObsticalChance: 0.
	gameBoard
		addTerrain: Rock atPosition:(1@3);
		addTerrain: Tree atPosition: (2@3).
	
	"actual tests"
	"-------------------------------------------------------------------"
	self assert: ((gameBoard getSquare:(1@3)) getTerrain) equals: Rock new.
	self assert: ((gameBoard getSquare:(2@3)) getTerrain) equals: Tree new.
	