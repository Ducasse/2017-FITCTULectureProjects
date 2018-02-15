initialization
initialize
	super initialize.
	self layout: BlGridLayout horizontal.
	self layout columnCount: 2.
	self addChild: (PcmLabelView withText: 'Lifes: ').
	self
		constraintsDo: [ :aLayoutConstraints | 
			aLayoutConstraints horizontal fitContent.
			aLayoutConstraints vertical fitContent ]