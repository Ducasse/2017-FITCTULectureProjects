initialization
initialize
	super initialize.
	scenes := OrderedCollection new.
	gameloop := GamePulseLoop new pulseBlock: [ self pulse ].