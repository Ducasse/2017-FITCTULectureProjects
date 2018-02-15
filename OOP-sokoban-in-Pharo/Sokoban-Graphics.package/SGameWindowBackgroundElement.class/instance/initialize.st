initialization
initialize
	|backgroundElement|
	super initialize.
	self size: 960@720.
	
	backgroundElement := BlElement new.
	backgroundElement size: 960@720.
	backgroundElement background: (BlPaintBackground paint: self backgroundColor).
	backgroundElement layout: BlBasicLayout new.
	
	self addChild: backgroundElement