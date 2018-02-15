construction
run: mapFile playerHumanAI: humanAI playerOrcAI: orcAI
	|game gameView|
	game := Game getInstance.
	humanAI
		ifTrue: [ game playerHuman: PlayerAI new. ]
		ifFalse: [ game playerHuman: (PlayerHuman new playerName: 'Marge' ; race: 'Human'). ].
	orcAI
		ifTrue: [ game playerOrc: PlayerAI new. ]
		ifFalse: [ game playerOrc: (PlayerHuman new playerName: 'Homer' ; race: 'Orc'). ].
		
	game activeGameBoard: 
		(GameBoard loadFromFile: mapFile playerHuman: game playerHuman playerOrc: game playerOrc).
	game humanOnTurn: false.
	game activePlayer: game playerHuman. "asi navic"
	
	
	"setting graphics stuff"
	"-----------------------------------"
	BlUniverse reset.
	gameView := GameElement openModel: (game activeGameBoard).
	"-----------------------------------"
	
	game startGame. "starting GameFlow"