utility
getHighscorePathFromLevelPath: levelPath
	| path |
	path := (FileLocator documents asFileReference / 'games' / 'sokoban' / 'highscores'
		/ levelPath asFileReference parent basename) ensureCreateDirectory.
	"always try to use / message when accessing subdirectories if possible
	DO NOT USE string concatenation with '\' (that does not work on other OS than Windows)"
	^ path / levelPath asFileReference basename