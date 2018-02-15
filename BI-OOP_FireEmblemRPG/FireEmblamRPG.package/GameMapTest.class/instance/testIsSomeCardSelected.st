tests
testIsSomeCardSelected
	|gm|
	gm := GameMap new.

	self assert: gm isSomeCardSelected not.
	
	