initialization
initializePresenter
	mainMenu actionOnStartButton: [ self playMenuOnTop ].
	mainMenu actionOnExitButton: [ self close ].
	playMenu actionOnBackButton: [ self mainMenuOnTop ].
	playMenu
		actionOnPlayButton: [ | levelPath |
			levelPath := playMenu getSelectedLevel.
			levelPath
				ifNotNil: [ self playScreenOnTop: levelPath ]
				 ].
	playScreen := self instantiate: SokobanPlayScreen.
	playScreen
		actionOnExitButton: [ self
				makeDialog: 'Do you really want to exit the level?'
				modal: true
				onAction: [ self playMenuOnTop ] ];
		actionOnResetButton: [ self
				makeDialog: 'Do you really want to reset the level?'
				modal: true
				onAction: [ playScreen resetLevel ] ]