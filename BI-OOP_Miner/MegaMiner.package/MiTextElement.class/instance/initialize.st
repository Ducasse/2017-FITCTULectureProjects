initialization
initialize
	super initialize.
	self size: self size.
	
	textElement := self defaultText.
	self addChild: textElement