tests
testGames
	| list game1 game2 count |
	list := GameList new.
	count := list games size.
	game1 := Game new.
	game1 title: 'Need For Speed'.
	game2 := Game new.
	game2 title: 'The Sims'.
	list addGame: game1.
	list addGame: game2.
	^ self
		assert:
			list games size = (2 + count) & ((list games at: (count - 1)) title = 'Need For Speed')
				& ((list games at: count) title = 'The Sims')