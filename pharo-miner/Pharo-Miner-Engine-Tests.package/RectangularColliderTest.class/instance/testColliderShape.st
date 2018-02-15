tests
testColliderShape
	| c |
	c := RectangularCollider new.
	self assert: c colliderShape class equals: RectangleShape