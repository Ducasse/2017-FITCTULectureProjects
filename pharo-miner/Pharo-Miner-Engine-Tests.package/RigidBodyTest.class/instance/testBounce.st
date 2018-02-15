tests
testBounce
	| rb |
	rb := RigidBody new.
	self assert: rb bounce equals: 0.
	
	rb bounce: 0.5.
	self assert: rb bounce equals: 0.5.
	
	rb bounce: 1.
	self assert: rb bounce equals: 1