accessing
startWithChampList: aChampList
	|table map game|
	table := self levelPVP: aChampList.
	
	map := GameMap new setMapSize: x and: y.
	map initializeForFields: table.
	game := MyGameElement new setDimension: dimension; gameMap: map.
	
	^ game.