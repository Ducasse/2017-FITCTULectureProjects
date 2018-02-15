accessing
grid: aGrid
	grid := aGrid.
	grid announcer when: MSGameOverAnnoucement send: #gameOver to: self.
	grid announcer when: MSGameWinAnnoucement send: #gameWin to: self.