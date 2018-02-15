instance creation
loadXsbFromFile: path
	^ self loadXsb: (FileStream fileNamed: path) contentsOfEntireFile.
