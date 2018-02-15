initialization
initializePresenter
	self whenWindowChanged: [ :w | w whenClosedDo: [ self opened: false. ] ].
	borrowingsList.
	readersList
		whenSelectedItemChanged: [ self refreshBorrowingsList ].
	refreshReadersButton
		action: [ self refreshReadersList ];
		label: 'refresh readers'.
	returnBookButton
		action: [ self returnBook ];
		label: 'return book'.