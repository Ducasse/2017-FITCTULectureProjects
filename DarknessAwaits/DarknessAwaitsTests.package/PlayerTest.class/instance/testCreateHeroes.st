tests
testCreateHeroes
	|player|
	player := Player new.
	
	self assert: player heroes size == 4.