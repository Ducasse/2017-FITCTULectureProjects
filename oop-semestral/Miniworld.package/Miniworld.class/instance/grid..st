accessing
grid: aNewGrid
	grid ifNotNil: [ self space root removeChild: grid ].
	startTile := nil.
	endTile := nil.
	grid := aNewGrid.
	self space root
		addEventHandlerOn: BlDragEvent
		do: [ :e | self grid relocate: self grid position + e delta ].
	self grid
		addEventHandlerOn: BlClickEvent
		do: [ :e | self stateHolder ifNotNil: [ self stateHolder updateTile: e target mw: self ] ].
	self grid
		relocate:
			(self space root width / 2 - (self grid predictedWidth / 2))
				@ (self space root height / 2 - (self grid predictedHeight / 2) - (bottomBar height / 2)).
	self space root addChildFirst: aNewGrid.
	algorithm tilemap: grid.
	self reset