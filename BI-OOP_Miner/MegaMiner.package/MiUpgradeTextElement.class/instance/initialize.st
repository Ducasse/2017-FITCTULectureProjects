initialization
initialize
	super initialize.
	self constraintsDo: [ :c | c grid vertical alignBottom ]