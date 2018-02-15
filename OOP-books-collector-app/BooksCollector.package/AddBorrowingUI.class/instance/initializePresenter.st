initialization
initializePresenter
	self whenWindowChanged: [ :w | w whenClosedDo: [ self opened: false. ] ].
	refreshBooksButton
		action: [ self refreshBookList ];
		label: 'refresh books'.
	refreshReadersButton
		action: [ self refreshReadersList ];
		label: 'refresh readers'.
	addBorrowingButton
		action: [ self addBorrowing ];
		label: 'create borrowing'.