initialization
initializeWidgets
	gameList := self instantiate: GameList.
	addGameButton := self newButton.
	remGameButton := self newButton.
	editGameButton := self newButton.
	addGameButton label: 'Add Game'.
	remGameButton label: 'Remove Game'.
	editGameButton label: 'Edit Game'.