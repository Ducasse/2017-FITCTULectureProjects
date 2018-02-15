initialization
initialize
	super initialize.
	message := ''.
	self opacity: 0.7.
	self constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].