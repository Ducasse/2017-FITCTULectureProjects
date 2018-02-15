mouse handlers
clickEvent: anEvent "a card"

	self gameMap chooseCard: anEvent currentTarget card andGameElement: self gameElement.
	gameMap sideBar showChampion: (anEvent currentTarget card field champion).
	