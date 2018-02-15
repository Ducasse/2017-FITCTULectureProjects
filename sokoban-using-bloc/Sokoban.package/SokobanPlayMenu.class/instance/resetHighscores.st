helper methods
resetHighscores
	"Deletes highscores for selected level"

	| levelPath |
	levelPath := self getSelectedLevel.
	levelPath
		ifNotNil: [ self owner
				makeDialog: 'Do you really want to reset the scores for this level?'
				modal: true
				onAction: [ (ResourceManager getHighscorePathFromLevelPath: levelPath) asFileReference
						delete.
					self loadHighscores ] ]