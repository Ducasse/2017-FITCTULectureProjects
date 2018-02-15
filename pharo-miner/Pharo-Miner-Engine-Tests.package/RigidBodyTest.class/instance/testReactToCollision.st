tests
testReactToCollision
	| go1 go2 col tr rb |
	tr := Transform new position: 0@0.
	rb := RigidBody new speed: 0@0; bounce: 0.
	go1 := GameObject new addBehaviour: tr; addBehaviour: rb.
	col := Collider new.
	go2 := GameObject new addBehaviour: col.
	
	tr position: 0@0.
	rb speed: 1@0.
	rb reactToCollision: (CollisionEvent new collider: col; collisionVector: -1@0).
	self assert: rb speed equals: 0@0.
	self assert: (tr position x between: -1 and: 0).
	self assert: tr position y equals: 0.
	
	tr position: -1@0.
	rb speed: 3@2.
	rb reactToCollision: (CollisionEvent new collider: col; collisionVector: -1@0).
	self assert: rb speed equals: 0@2.
	self assert: (tr position x between: -2 and: -1).
	self assert: tr position y equals: 0.
	
	tr position: -2@0.
	rb bounce: 0.5.
	rb speed: 1@0.
	rb reactToCollision: (CollisionEvent new collider: col; collisionVector: -1@0).
	self assert: rb speed equals: -0.5@0.
	self assert: (tr position x between: -3 and: -2).
	self assert: tr position y equals: 0.
	
	tr position: -3@0.
	rb speed: 3@2.
	rb reactToCollision: (CollisionEvent new collider: col; collisionVector: -1@0).
	self assert: rb speed equals: -1.5@2.
	self assert: (tr position x between: -4 and: -3).
	self assert: tr position y equals: 0