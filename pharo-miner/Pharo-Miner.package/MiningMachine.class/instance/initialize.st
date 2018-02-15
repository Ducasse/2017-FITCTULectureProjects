initialization
initialize
	super initialize.
	self
		addBehaviour: Transform new;
		addBehaviour: Controller new;
		addBehaviour: RigidBody new;
		addBehaviour: Collider rectangular;
		addBehaviour: MultiSpriteRenderer new;
		addBehaviour: (Camera new offset: 64@ -64; speed: 0.3);
		addBehaviour: MiningDrill new.
	self subscribe