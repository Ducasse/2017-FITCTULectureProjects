tests
testGetHighscorePathFromLevelPath
	| path |
	path := ResourceManager
		getHighscorePathFromLevelPath: (ResourceManager instance getResFile: 'levels/original/1.txt').
	self assert: (path parent exists and: (path basename endsWith: '1.txt'))