accessing
initialize
	super initialize.
	
	self layout: BlFlowLayout new horizontal;
	constraintsDo: [ :c |
		c horizontal fitContent.
		c vertical fitContent.].
			
	self size: 200@213.
	hasChanged := false.