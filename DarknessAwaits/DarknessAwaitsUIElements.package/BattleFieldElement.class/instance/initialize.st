accessing
initialize
	super initialize.
	
	self layout: BlGridLayout horizontal.
	self layout cellSpacing: 1.
	self background: Color black. 
	
	self
		constraintsDo: [ :layoutConst |
			layoutConst horizontal fitContent.
			layoutConst vertical fitContent  ]