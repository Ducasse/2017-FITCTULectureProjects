tests
testGravity
	| rb |
	rb := RigidBody new.
	self assert: rb gravity equals: 0.
	
	rb gravity: 9.81.
	self assert: rb gravity equals: 9.81
	