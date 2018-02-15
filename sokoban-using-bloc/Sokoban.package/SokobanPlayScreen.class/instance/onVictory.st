announcement - handling
onVictory
	"When the victory is achieved, this method is invoked to show a window where user can type his name and save his score. After that he is returned back to menu"

	| victoryInput victoryDialog |
	victoryInput := self instantiate: TextInputFieldModel.
	victoryInput ghostText: 'Enter your name and accept'.
	victoryDialog := victoryInput openDialogWithSpec.
	victoryInput
		initializeDialogWindow: victoryDialog;
		whenTextChanged:
				[ victoryDialog okButtonEnabled: (self class isValidName: victoryInput textHolder value) ].
	victoryDialog
		okAction: [ level
				saveHighscore: victoryInput textHolder value
				path: (ResourceManager getHighscorePathFromLevelPath: currentLevelPath).
			self owner playMenuOnTop ];
		cancelAction: [ self owner playMenuOnTop ];
		okButtonEnabled: false;
		title: 'You have won!';
		centeredRelativeTo: self owner