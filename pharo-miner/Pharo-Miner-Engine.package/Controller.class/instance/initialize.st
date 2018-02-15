initialization
initialize
	super initialize.
	pressedqueue := OrderedCollection new.
	downqueue := OrderedCollection new.
	upqueue := OrderedCollection new.
	cleanupblock := [].