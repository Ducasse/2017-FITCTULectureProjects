tests
testSpeed
	| rb |
	rb := RigidBody new.
	self assert: rb speed equals: Vector2D zero.
	
	rb speed: Vector2D left.
	self assert: rb speed equals: Vector2D left.
	
	rb speed: 100@100.
	self assert: rb speed equals: 100@100.