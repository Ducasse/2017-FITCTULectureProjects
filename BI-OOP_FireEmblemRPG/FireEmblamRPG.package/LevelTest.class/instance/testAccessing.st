tests
testAccessing
	| level |
	level := Level new.
	level level: 14.
	self assert:(level level = 14).
	level experience: 22.
	self assert:(level experience = 22).
	level experienceToNextLevel: 123.
	self assert:(level experienceToNextLevel = 123).
	level abilities: 'aha'.
	self assert:(level abilities = 'aha').
	