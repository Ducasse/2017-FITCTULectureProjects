initialization
initialize
	super initialize.
	
	self layout: BlGridLayout horizontal  .
	self layout cellSpacing: 2.
	self background: Color lightGray. 
	self layout columnCount: 2.
	
	self
		constraintsDo: [ :layoutConst |
			layoutConst horizontal fitContent.
			layoutConst vertical fitContent  ]