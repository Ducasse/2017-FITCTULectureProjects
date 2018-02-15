initialization
createList: aName
	| gameList |
	gameList := GameList new.
	gameList listName: aName.
	lists add: gameList.