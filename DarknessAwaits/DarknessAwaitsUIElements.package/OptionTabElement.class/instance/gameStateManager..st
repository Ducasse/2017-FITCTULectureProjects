accessing
gameStateManager: newGameStateManager
	gameStateManager := newGameStateManager.
	gameStateManager announcer when: GameStateChangedAnnouncement send: #onPlayerOptionsChanged to: self