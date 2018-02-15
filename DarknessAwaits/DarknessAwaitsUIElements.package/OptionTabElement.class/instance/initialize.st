accessing
initialize
	super initialize.
	
	self layout: BlGridLayout vertical.
	self layout cellSpacing: 2.
	
		self
		constraintsDo: [ :layoutConst |
			layoutConst horizontal fitContent.
			layoutConst vertical fitContent  ]