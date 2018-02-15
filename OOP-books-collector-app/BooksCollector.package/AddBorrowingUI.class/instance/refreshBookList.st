action
refreshBookList
	|getString|
	getString:= ( ZnEasy get: self url, '/books') entity string.
	booksList items: ((STON fromString: getString) select: [ :a | a number > 0 ]) asOrderedCollection.
	booksList resetSelection.