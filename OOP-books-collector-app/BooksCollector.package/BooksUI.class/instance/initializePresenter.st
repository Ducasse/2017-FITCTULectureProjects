initialization
initializePresenter
	self whenWindowChanged: [ :w | w whenClosedDo: [ self opened: false. ] ].
	booksList.
	refreshButton
		action: [ self refreshBooksList. self booksList resetSelection. ];
		label: 'refresh'.
	deleteButton
		action: [ self deleteBook ];
		label: 'delete'.
		incrButton
			action: [ self increment ];
			label: 'increase'.
		decrButton
			action: [ self decrement ];
			label: 'decrease'.