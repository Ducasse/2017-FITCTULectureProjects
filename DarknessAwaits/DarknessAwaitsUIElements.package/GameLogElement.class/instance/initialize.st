drawing
initialize
	super initialize.
	
	self size: 434@130.
	list := GameLogListElement new
		constraintsDo: [ :c |
			c horizontal exact: 400.
			c vertical matchParent ];
		yourself.
	source := GameLogDataSource new.		
	list dataSource: source.
		
	self addChild: list.
	
	
