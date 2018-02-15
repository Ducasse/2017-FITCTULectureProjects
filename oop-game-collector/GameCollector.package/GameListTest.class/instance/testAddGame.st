tests - accessing
testAddGame
	|list count|
	list := GameList new.
	count := list games size.
	list addGame: Game new.
	list addGame: Game new.
	^ self assert: list games size equals: 2 + count.