control
makeMove: aVector
	(self getBehaviour: RigidBody)
		applyForce: aVector * self movementSpeed * self time deltaTime