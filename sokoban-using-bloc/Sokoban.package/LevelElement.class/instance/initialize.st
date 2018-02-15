initialization
initialize
	super initialize.
	self layout: BlGridLayout horizontal.
	self
		constraintsDo: [ :aLayoutConstraints | 
			aLayoutConstraints horizontal fitContent.
			aLayoutConstraints vertical fitContent ].
	