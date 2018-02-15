tests
testMass
	| rb |
	rb := RigidBody new.
	self assert: rb mass equals: 1.
	
	rb mass: 10.
	self assert: rb mass equals: 10.
	
	rb mass: 100.
	self assert: rb mass equals: 100