initialization
setupPhysics
	flying := true.
	self movementSpeed: 150.
	(self getBehaviour: RigidBody)
		mass: 1;
		drag: 1;
		gravity: 50;
		bounce: 0.
	(self getBehaviour: Collider)
		width: 120;
		height: 120