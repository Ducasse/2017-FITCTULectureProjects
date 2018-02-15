tests
testDragForce
	| rb |
	rb := RigidBody new.
	self assert: rb dragForce equals: 0@0.
	
	rb speed: (10@0);
		drag: 1.
	self assert: rb dragForce equals: (100@0) negated / 2 * 1.
	
	rb drag: 0.1.
	self assert: rb dragForce equals: (100@0) negated / 2 * 0.1.