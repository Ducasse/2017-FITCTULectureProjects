actions
updateOne: anOldBook to: aNewBook
	db remove: anOldBook.
	db add: aNewBook.
	search updateView
	