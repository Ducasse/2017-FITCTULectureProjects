tests
testInitializeWithClass
	| level |
	level := Level withClass: 'Tank'.
	self assert:(level level = 1).
	self assert:(level experience = 0).
	self assert:(level experienceToNextLevel = 100).
	self assert:(level abilities ~= nil).
	