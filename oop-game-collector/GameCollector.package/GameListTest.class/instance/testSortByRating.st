tests - sorting
testSortByRating
	|list1 list2 g1 g2 g3|
	list1 := GameList new.
	list2 := GameList new.
	list1 games removeAll.
	list2 games removeAll.
	g1 := Game new.
	g2 := Game new.
	g3 := Game new.
	g1 rating: 5.
	g2 rating: 2.
	g3 rating: 4.
	list1 addGame: g1; addGame: g2; addGame: g3.
	list2 addGame: g1; addGame: g2; addGame: g3.
	list1 sortByRating: true.
	list2 sortByRating: false.
	^ self assert: ((list1 games at: 1) rating = 2) & ((list1 games at: 2) rating = 4) & ((list1 games at: 3) rating = 5) & ((list2 games at: 1) rating = 5) & ((list2 games at: 2) rating = 4) & ((list2 games at: 3) rating = 2).