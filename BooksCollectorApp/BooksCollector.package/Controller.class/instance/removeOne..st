actions
removeOne: aBook
	db remove: aBook.
	search updateView
	