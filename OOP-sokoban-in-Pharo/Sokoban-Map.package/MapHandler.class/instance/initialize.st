initialization
initialize
	super initialize.
	dir := (FileSystem disk workingDirectory) .
	mapSuffix := '.oop' .
	( dir / 'maps' ) ensureCreateDirectory .
	( dir / 'maps' / 'saved_games' ) ensureCreateDirectory .
