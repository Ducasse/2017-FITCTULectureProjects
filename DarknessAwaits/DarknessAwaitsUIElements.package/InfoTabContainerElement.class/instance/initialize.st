initialization
initialize
	super initialize.
	
	tileCharInfo := TileCharInfoElement new.
	activeCharInfo := ActiveCharInfoElement new.
		
	self addChild: activeCharInfo.
	self addChild: tileCharInfo.

	self layout: BlGridLayout vertical.
	self layout cellSpacing: 2.
	self
		constraintsDo: [ :layoutConst |
			layoutConst horizontal fitContent.
			layoutConst vertical fitContent  ]