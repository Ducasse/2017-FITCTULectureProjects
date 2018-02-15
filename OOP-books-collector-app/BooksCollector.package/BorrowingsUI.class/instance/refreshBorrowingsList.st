action
refreshBorrowingsList
	|reader getString|
	reader:= readersList selectedItem.
	reader isNil ifFalse: [
		getString:= ( ZnEasy get: self url, '/readers/', reader id asString, '/books') entity string.
		borrowingsList items: (STON fromString: getString) asOrderedCollection.
	].