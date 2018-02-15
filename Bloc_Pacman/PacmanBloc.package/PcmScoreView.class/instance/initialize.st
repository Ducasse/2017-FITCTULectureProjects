initialization
initialize
	super initialize.
	self layout: BlGridLayout horizontal.
	self layout columnCount: 5.
	self addChild: (PcmLabelView withText: 'Score: ').
	self
		constraintsDo: [ :aLayoutConstraints | 
			aLayoutConstraints horizontal fitContent.
			aLayoutConstraints vertical fitContent ]