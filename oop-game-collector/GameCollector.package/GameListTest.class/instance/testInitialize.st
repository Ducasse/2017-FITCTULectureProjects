tests - creating
testInitialize
	|list|
	list := GameList new.
	^ self assert: (list listName = 'ListOfGames').