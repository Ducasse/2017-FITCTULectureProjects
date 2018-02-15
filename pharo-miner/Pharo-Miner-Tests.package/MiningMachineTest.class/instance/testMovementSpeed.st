tests
testMovementSpeed
	|machine|
	machine := MiningMachine new.
	machine movementSpeed: 651.
	self assert: machine movementSpeed equals: 651.
	machine movementSpeed: 17.
	self assert: machine movementSpeed equals: 17.	
