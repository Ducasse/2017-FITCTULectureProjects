helper methods
loadHighscores
	"When user selects a level in the list, this method is invoked to update highscore list with highscores for that particular level"

	| levelPath items |
	items := OrderedCollection new.
	items add: {'Name' . 'Steps'}.
	levelPath := self listLevels selectedItem.
	levelPath
		ifNotNil: [ | data |
			data := (StandardFileStream
				fileNamed: (ResourceManager getHighscorePathFromLevelPath: levelPath))
				contentsOfEntireFile.
			(data substrings: ',')
				do: [ :each | 
					items
						add:
							{((each substrings: ' ') at: 1).
							((each substrings: ' ') at: 2)} ] ].
	self listScores items: items