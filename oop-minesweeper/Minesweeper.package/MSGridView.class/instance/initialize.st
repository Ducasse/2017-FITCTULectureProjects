initialization
initialize
	super initialize.
	backgroundColor := Color gray darker.
	spacing := 1.
	
	self layout: (BlGridLayout horizontal cellSpacing: spacing).
	self background: backgroundColor.
	self 
		constraintsDo: [ :aLayoutConstraints |
			aLayoutConstraints horizontal fitContent.
			aLayoutConstraints vertical fitContent.
		]