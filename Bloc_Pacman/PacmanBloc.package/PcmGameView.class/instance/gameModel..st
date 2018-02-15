accessing
gameModel: aPcmGame
	gameModel := aPcmGame.
	mapView mapModel: aPcmGame map.
	pointsView model: self gameModel.
	lifesView model: self gameModel. 
	
	gameModel announcer when: PcmPlayerLost send: #onGameOver to: self.
	gameModel announcer when: PcmPlayerWon send: #onWin to: self.
	gameModel announcer when: PcmNewGame send: #onNewGame to: self.