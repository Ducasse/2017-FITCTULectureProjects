accessing
game: aGame
	game := aGame.
	game grid announcer when: MSGameOverAnnoucement send: #gameOver to: self.
	game grid announcer when: MSGameWinAnnoucement send: #gameWin to: self.