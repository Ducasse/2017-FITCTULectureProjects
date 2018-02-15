tests
testApplyForce
	| rb |
	rb := RigidBody new speed: 0@0.
	rb applyForce: 1@0 * rb mass.
	self assert: rb speed equals: 1@0.
	rb applyForce: 2@3 * rb mass.
	self assert: rb speed equals: 3@3.
	rb applyForce: rb speed negated * rb mass.
	self assert: rb speed equals: 0@0.