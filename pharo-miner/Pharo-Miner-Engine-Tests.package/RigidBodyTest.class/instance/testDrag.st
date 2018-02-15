tests
testDrag
	| rb |
	rb := RigidBody new.
	self assert: rb drag equals: 0.
	
	rb drag: 10.
	self assert: rb drag equals: 10.
	
	rb drag: 100.
	self assert: rb drag equals: 100.