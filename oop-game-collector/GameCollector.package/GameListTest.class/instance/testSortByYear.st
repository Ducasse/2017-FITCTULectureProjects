tests - sorting
testSortByYear
	|list1 list2 g1 g2 g3|
	list1 := GameList new.
	list2 := GameList new.
	list1 games removeAll.
	list2 games removeAll.
	g1 := Game new.
	g2 := Game new.
	g3 := Game new.
	g1 releaseYear: 2017.
	g2 releaseYear: 2008.
	g3 releaseYear: 2012.
	list1 addGame: g1; addGame: g2; addGame: g3.
	list2 addGame: g1; addGame: g2; addGame: g3.
	list1 sortByYear: true.
	list2 sortByYear: false.
	^ self assert: ((list1 games at: 1) releaseYear = 2008) & ((list1 games at: 2) releaseYear = 2012) & ((list1 games at: 3) releaseYear = 2017) & ((list2 games at: 1) releaseYear = 2017) & ((list2 games at: 2) releaseYear = 2012) & ((list2 games at: 3) releaseYear = 2008).