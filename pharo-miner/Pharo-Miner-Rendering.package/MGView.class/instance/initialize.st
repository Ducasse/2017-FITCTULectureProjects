initialization
initialize
	space := BlSpace new
		extent: self windowSize;
		title: 'Pharo Miner View'.
	space root addChild: container.
	self buildView.
	self registerGameAnnouncers.
	self addEventHandler.
	space show