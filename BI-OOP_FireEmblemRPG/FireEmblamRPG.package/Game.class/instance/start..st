accessing
start: aSize
	|table map game|
	self assert: [ aSize % x == 0 ]
		description: [ aSize asString, ' musí být násobkem ', x asString, 'ti' ].
	
	table := self level1.
	
	map := GameMap new setMapSize: x and: y.
	map initializeForFields: table.
	game := MyGameElement new setDimension: aSize; gameMap: map.
	
	^ game.