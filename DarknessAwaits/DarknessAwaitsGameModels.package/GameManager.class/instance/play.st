initialization
play
	| game |
	gameLog := GameLog new.
	battleManager := BattleManager new. battleManager gameManager: self.
	battleMap := BattleField new.	battleMap gameManager: self.

	game := GameManagerElement new. game gameManager: self.
	game initializePlayground.  

	gameStateManager newLevel.