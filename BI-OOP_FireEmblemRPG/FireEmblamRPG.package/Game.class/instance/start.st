accessing
start
	|table map game|
	table := self level1.
	
	map := GameMap new setMapSize: x and: y.
	map initializeForFields: table.
	game := MyGameElement new setDimension: dimension; gameMap: map.
	
	^ game.