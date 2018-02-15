initialization
start
	| buttonEasy buttonMedium buttonHard buttonExtreme container buttonEasyListener buttonMediumListener buttonHardListener buttonExtremeListener |
	
	buttonEasyListener := MSGameStartButtonEventListener new difficulty: 'easy'; space: space.
	buttonMediumListener := MSGameStartButtonEventListener new difficulty: 'medium'; space: space.
	buttonHardListener := MSGameStartButtonEventListener new difficulty: 'hard'; space: space.
	buttonExtremeListener := MSGameStartButtonEventListener new difficulty: 'extreme'; space: space.
	
	buttonEasy := MSNewGameButton withText: 'Easy'.
	buttonEasy 
		size: 0@40;
		addEventHandler: buttonEasyListener;
		constraintsDo: [ :c |
		c horizontal matchParent.
		].
	buttonMedium := MSNewGameButton withText: 'Medium'.
	buttonMedium
		size: 0@40;
		addEventHandler: buttonMediumListener;
		constraintsDo: [ :c |
		c horizontal matchParent.
	].
	buttonHard := MSNewGameButton withText: 'Hard'.
	buttonHard
		size: 0@40;
		addEventHandler: buttonHardListener;
		constraintsDo: [ :c |
		c horizontal matchParent.
	].
	buttonExtreme := MSNewGameButton withText: 'Extreme'.
	buttonExtreme
		size: 0@40;
		addEventHandler: buttonExtremeListener;
		constraintsDo: [ :c |
		c horizontal matchParent.
	].

	
	container := BlElement new
		constraintsDo: [ :c |
			c horizontal matchParent.
			c vertical matchParent ];
		yourself;
		background: Color gray darker darker;
		addChild: buttonEasy;
		addChild: buttonMedium;
		addChild: buttonHard;
		addChild: buttonExtreme;
		layout: (BlGridLayout vertical cellSpacing: 5).

	
	space root addChild: container.
	
	
	space extent: (300@185).
	