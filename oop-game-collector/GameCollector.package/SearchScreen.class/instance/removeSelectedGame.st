initialization
removeSelectedGame
	| selectedGame |
	selectedGame := grid selectedItem content.
	list removeGame: selectedGame.
	self refreshView.
	self refreshSelection