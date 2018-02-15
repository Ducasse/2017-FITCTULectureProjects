initialization
initializePresenter
	addGameButton action: [ (GameEditWindow new: self) openWithSpec ].
	remGameButton
		action: [ gameList selectedItem
				ifNotNil: [ (RemGameWindow new: gameList selectedItem) openWithSpec ].
			gameList selectedItem
				ifNil: [ (WarningWindow new: 'No selected game to remove. Please select game.') openWithSpec ] ].
	editGameButton
		action: [ gameList selectedItem
				ifNil: [ (GameEditWindow new: gameList selectedItem) openWithSpec ].
			gameList selectedItem
				ifNotNil: [ (WarningWindow new: 'No selected game to edit. Please select game.') openWithSpec ] ]