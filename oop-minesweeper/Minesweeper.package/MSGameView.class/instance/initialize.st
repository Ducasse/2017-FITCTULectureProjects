initialization
initialize
	| startButton |
	super initialize.
	
	startButtonListener := MSNewGameButtonEventListener new gameView: self.
	
	container := BlElement new
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ];
		yourself.
		
	gridView := MSGridView new.
	startButton := MSNewGameButton withText: 'New Game'.
	startButton addEventHandler: startButtonListener.
	startButton size: 0@37.
	startButton constraintsDo: [ :c |
		c horizontal matchParent.
	].
	
	self  background: Color gray darker darker.
	self  addChild: startButton.
	container  addChild: gridView.
	
	self  layout: (BlGridLayout vertical cellSpacing: 5).
	self constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].

	self addChild: container.