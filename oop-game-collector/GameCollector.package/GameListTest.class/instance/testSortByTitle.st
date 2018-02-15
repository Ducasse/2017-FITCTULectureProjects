tests - sorting
testSortByTitle
	|list1 list2 g1 g2 g3|
	list1 := GameList new.
	list2 := GameList new.
	list1 games removeAll.
	list2 games removeAll.
	g1 := Game new.
	g2 := Game new.
	g3 := Game new.
	g1 title: 'Forza'.
	g2 title: 'Alive'.
	g3 title: 'Dead Space'.
	list1 addGame: g1; addGame: g2; addGame: g3.
	list2 addGame: g1; addGame: g2; addGame: g3.
	list1 sortByTitle: true.
	list2 sortByTitle: false.
	^ self assert: ((list1 games at: 1) title = 'Alive') & ((list1 games at: 2) title = 'Dead Space') & ((list1 games at: 3) title = 'Forza') & ((list2 games at: 1) title = 'Forza') & ((list2 games at: 2) title = 'Dead Space') & ((list2 games at: 3) title = 'Alive').