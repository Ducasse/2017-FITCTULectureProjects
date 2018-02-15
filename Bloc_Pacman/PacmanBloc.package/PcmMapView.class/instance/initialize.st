initialization
initialize
	super initialize.
	self layout: BlGridLayout horizontal.
	"self layout columnCount: columns."
	self
		constraintsDo: [ :aLayoutConstraints | 
		aLayoutConstraints horizontal fitContent.
		aLayoutConstraints vertical fitContent ].