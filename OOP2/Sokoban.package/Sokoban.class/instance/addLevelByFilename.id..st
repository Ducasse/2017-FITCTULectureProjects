initialization
addLevelByFilename: filename id: id
	| level |
	level := Level new.
	level filename: Sokoban resourcesPath , filename.
	bestScores at: id put: UndifinedScore new.
	levels at: id put: level