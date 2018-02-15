initialization
createView: aGame
	| view |
	view := self new.
	view model: aGame.
	^ view