initialization
initializeWidgets
	self initializeToolbar .
	detail := self instantiate: DetailView.
	grid := self instantiate: GameGrid.
	self list: GameList new