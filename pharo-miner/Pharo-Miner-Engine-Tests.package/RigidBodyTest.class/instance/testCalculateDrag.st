tests
testCalculateDrag
	| rb |
	rb := RigidBody new speed: 5@0.
	rb calculateDrag: 1.
	self assert: rb speed equals: 5@0.
	rb drag: 0.5.
	rb calculateDrag: 1.
	self assert: rb speed equals: 2.5@0.
	rb drag: 1.
	rb calculateDrag: 1.
	self assert: rb speed equals: 0@0.
	