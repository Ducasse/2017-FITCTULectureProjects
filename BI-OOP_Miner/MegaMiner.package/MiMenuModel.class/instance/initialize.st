initialization
initialize
	super initialize.
	buttons := OrderedCollection new.
	buttons
		add: MiMenuButtonModelNewGame new;
		add: MiMenuButtonModelLoadGame new.