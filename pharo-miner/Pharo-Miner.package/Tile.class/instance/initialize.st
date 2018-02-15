initialization
initialize
	super initialize.
	self
		addBehaviour: Transform new;
		addBehaviour:
			(Collider rectangular
				width: 127;
				height: 127;
				deactivate;
				yourself);
		addBehaviour: (SpriteRenderer new)