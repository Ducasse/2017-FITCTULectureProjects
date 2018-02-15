tests - converting
testAsString
	|list|
	list := GameList new.
	list listName: 'moje hry'.
	^ self assert: list asString equals: 'moje hry'.