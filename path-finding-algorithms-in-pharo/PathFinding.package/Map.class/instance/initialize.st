initialization
initialize
	super initialize.
	self layout: BlGridLayout horizontal.
	self
	constraintsDo: [ :layoutCons |
	layoutCons horizontal fitContent.
	layoutCons vertical fitContent ].