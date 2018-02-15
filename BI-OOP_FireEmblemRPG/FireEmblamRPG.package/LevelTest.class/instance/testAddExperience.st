tests
testAddExperience
	| level |
	level := Level withClass: 'Tank'.
	self assert:(level experience = 0).
	self assert:(level level = 1).
	
	level addExperience: 50.
	self assert:(level experience = 50).
	self assert:(level level = 1).
	
	level addExperience: 60.
	self assert:(level experience = 10).
	self assert:(level level = 2).
	
	