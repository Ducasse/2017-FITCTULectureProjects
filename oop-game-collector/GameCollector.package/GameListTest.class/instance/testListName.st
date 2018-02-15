tests - accessing
testListName
	|list|
	list := GameList new.
	list listName: 'moje hry'.
	^ self assert: list listName equals: 'moje hry'.