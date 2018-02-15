tests
testCalculateGravity
	| go rb |
	rb := RigidBody new speed: 0@0.
	go := GameObject new addBehaviour: rb.
	rb calculateGravity: 1.
	self assert: rb speed equals: 0@0.
	rb gravity: 1.
	rb calculateGravity: 1.
	self assert: rb speed equals: 0@ -1.
	rb calculateGravity: 2.
	self assert: rb speed equals: 0@ -3.
	