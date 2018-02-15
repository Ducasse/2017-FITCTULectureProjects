tests
testLevelUp
	| level |
	level := Level withClass: 'Tank'.
	level levelUp.
	self assert:(level level = 2).
	
	