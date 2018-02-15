initialization
createView: aGame
	| view |
	view := self new.
	view model: aGame.
	view createBoardView: aGame.
	view createMinerView: aGame.
	view createStatsView: aGame.
	view createMoneyView: aGame.
	view createPortalButtonView: aGame.
	^ view