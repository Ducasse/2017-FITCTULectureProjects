tests - sorting
testSortByPrice
	|list1 list2 g1 g2 g3|
	list1 := GameList new.
	list2 := GameList new.
	list1 games removeAll.
	list2 games removeAll.
	g1 := Game new.
	g2 := Game new.
	g3 := Game new.
	g1 price: 600.
	g2 price: 200.
	g3 price: 400.
	list1 addGame: g1; addGame: g2; addGame: g3.
	list2 addGame: g1; addGame: g2; addGame: g3.
	list1 sortByPrice: true.
	list2 sortByPrice: false.
	^ self assert: ((list1 games at: 1) price = 200) & ((list1 games at: 2) price = 400) & ((list1 games at: 3) price = 600) & ((list2 games at: 1) price = 600) & ((list2 games at: 2) price = 400) & ((list2 games at: 3) price = 200).