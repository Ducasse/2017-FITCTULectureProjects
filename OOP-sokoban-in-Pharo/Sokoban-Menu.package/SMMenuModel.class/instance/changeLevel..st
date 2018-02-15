changeTextFields
changeLevel: input
	| maxLevelIndex newLevelIndex |
	newLevelIndex := selectedLevel + input .
	
	maxLevelIndex := levelsArray size .
	
	( newLevelIndex > 0 and: newLevelIndex <= maxLevelIndex )
	ifTrue:  [ 
		selectedLevel := newLevelIndex .
		((buttons at: 4) text: ((levelsArray at: newLevelIndex) asString)) notifyChangeText
	].