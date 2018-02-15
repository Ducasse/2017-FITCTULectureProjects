initialization
initialize
	super initialize.
	
	mapView := PcmMapView new.
	self addChild: mapView.
	
	pointsView := PcmScoreView new.
	self addChild: pointsView.
	
	lifesView := PcmLifesView new.
	self addChild: lifesView.
	
	gameOverView := PcmGameOverView new.
	self addChild: gameOverView.
	
	gameWonView := PcmGameWonView new.
	self addChild: gameWonView.
	
	self onNewGame.
	
	self layout: BlGridLayout vertical.
	self
		constraintsDo: [ :aLayoutConstraints | 
			aLayoutConstraints horizontal fitContent.
			aLayoutConstraints vertical fitContent ]