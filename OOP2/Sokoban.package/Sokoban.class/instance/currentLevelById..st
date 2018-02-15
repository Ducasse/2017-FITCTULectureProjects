initialization
currentLevelById: id
	| level |
	(levels size = 0) ifTrue: [ self readLevelsList ]. 
	level := levels at: id.
	currentLevel := level.
	currentLevel restart.
	currentLevel bestScore: (bestScores at: id).
	presenter level: level.
	currentLevelNum := id.
	presenter update