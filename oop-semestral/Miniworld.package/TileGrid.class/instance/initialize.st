initialization
initialize
	super initialize.
	self layout: BlGridLayout new.
	self layout
		columnCount: columns;
		cellSpacing: 0.
	self
		constraintsDo: [ :c | 
			c horizontal fitContent.
			c vertical fitContent ]