action
refreshReadersList
	|getString|
	getString:= ( ZnEasy get: self url, '/readers') entity string.
	readersList items: (STON fromString: getString) asOrderedCollection.
	readersList resetSelection.
	borrowingsList items: (STON fromString: '{}').