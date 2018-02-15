initialization
initialize
	super initialize.
	self loadMap.
	space := BlSpace new.
	space extent: 480 @ 464.
	space root addChild: gameView.
	ghosts := OrderedCollection new.
	self initObjects.
	space show.
	ticker := PcmTicker withTick: 1.
	ticker fire: [ (space root children at: 2) animate: ticker ] after: 20.
	self setKeyboardEvents.
	self newGame.
	[ ticker run ] fork