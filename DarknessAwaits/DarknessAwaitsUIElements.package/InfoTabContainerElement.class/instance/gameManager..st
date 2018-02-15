initialization
gameManager: newGameManager
	gameManager := newGameManager.
	
	tileCharInfo tileCharInfo: gameManager tileCharInfo.
	activeCharInfo queue: gameManager fightOrderQueue.