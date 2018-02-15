tests
testPlayer
	|player|
	player := Player new.
	
	self assert: player inventory notNil.
	self assert: player heroes notNil.