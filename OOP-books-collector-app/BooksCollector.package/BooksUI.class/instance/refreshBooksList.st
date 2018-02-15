action
refreshBooksList
	|getString|
	getString:= ( ZnEasy get: self url, '/books') entity string.
	booksList items: (STON fromString: getString) asOrderedCollection.