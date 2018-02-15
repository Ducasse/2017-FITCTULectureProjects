accessing
move: dir
	currentLevel move: dir.
	"TODO: check if level isWon and if it is then show some additional button 'next level'"
	presenter update.
	currentLevel isWon
		ifTrue: [ bestScores at: currentLevelNum put: currentLevel bestScore .self switchLevel ]