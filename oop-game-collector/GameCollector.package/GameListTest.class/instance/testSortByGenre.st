tests - sorting
testSortByGenre
	|list1 list2 g1 g2 g3|
	list1 := GameList new.
	list2 := GameList new.
	list1 games removeAll.
	list2 games removeAll.
	g1 := Game new.
	g2 := Game new.
	g3 := Game new.
	g1 genre: GameGenre new setAdventure.
	g2 genre: GameGenre new setStrategy.
	g3 genre: GameGenre new setLogic.
	list1 addGame: g1; addGame: g2; addGame: g3.
	list2 addGame: g1; addGame: g2; addGame: g3.
	list1 sortByGenre: true.
	list2 sortByGenre: false.
	^ self assert: ((list1 games at: 1) genre asString = 'Adventure') & ((list1 games at: 2) genre asString = 'Logic') & ((list1 games at: 3) genre asString = 'Strategy') & ((list2 games at: 1) genre asString = 'Strategy') & ((list2 games at: 2) genre asString = 'Logic') & ((list2 games at: 3) genre asString = 'Adventure').