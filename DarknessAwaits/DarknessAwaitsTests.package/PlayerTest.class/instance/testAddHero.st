tests
testAddHero
	|player|
	player := Player new.
	player addHero: Hero new.
	
	self assert: player heroes size == 5.