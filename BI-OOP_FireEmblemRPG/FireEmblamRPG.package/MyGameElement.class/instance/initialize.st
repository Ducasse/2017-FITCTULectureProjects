initialization
initialize
	super initialize.
	
	self layout: (BlGridLayout new cellSpacing: 1).
	self background: Color gray darker.
	
	self constraintsDo: [ :layoutConstraints |
		layoutConstraints horizontal fitContent.
		layoutConstraints vertical fitContent.
	].

	size := 600.