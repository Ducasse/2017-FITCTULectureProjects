tests - sorting
testSortByCompleted
	|list1 list2 g1 g2 g3|
	list1 := GameList new.
	list2 := GameList new.
	list1 games removeAll.
	list2 games removeAll.
	g1 := Game new.
	g2 := Game new.
	g3 := Game new.
	g1 completed: true.
	g2 completed: false.
	g3 completed: true.
	list1 addGame: g1; addGame: g2; addGame: g3.
	list2 addGame: g1; addGame: g2; addGame: g3.
	list1 sortByCompleted: true.
	list2 sortByCompleted: false.
	^ self assert: ((list1 games at: 1) completed = true) & ((list1 games at: 2) completed = true) & ((list1 games at: 3) completed = false) & ((list2 games at: 1) completed = false) & ((list2 games at: 2) completed = true) & ((list2 games at: 3) completed = true).