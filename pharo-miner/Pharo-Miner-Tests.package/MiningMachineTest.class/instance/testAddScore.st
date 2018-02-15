tests
testAddScore

	|machine|
	machine := MiningMachine new.
	self assert: machine score equals: 0.
	machine addScore: 50.
	self assert: machine score equals: 50.
	machine addScore: 100.
	self assert: machine score equals: 150.
	
	