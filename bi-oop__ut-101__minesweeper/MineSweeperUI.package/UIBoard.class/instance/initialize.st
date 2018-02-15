initialization
initialize
	|board|
	board := (MineSweeper uniqueInstance) board.
	super initialize.
	self layout: (BlGridLayout horizontal cellSpacing: 0).
	rows := board y.
	columns := board x.	
	
	1 to: rows do: [ :r | 
		1 to: columns do: [ :c | self addChild: ( 
			UITile new asElement 
					addEventHandler: (UITileEventListener new);
					coord: (Coordinate x: c y: r);
					yourself
			  ) ]
		].
	self
		constraintsDo: [ :aLayoutConstraints |
		aLayoutConstraints horizontal fitContent.
		aLayoutConstraints vertical fitContent ].
	self layout columnCount: columns.