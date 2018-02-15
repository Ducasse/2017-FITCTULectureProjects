initialization
initializePresenter
	self whenWindowChanged: [ :w | w whenClosedDo: [ self opened: false. ] ].
	readersList.	
	refreshButton
		action: [ self refreshReaderList ];
		label: 'refresh'.
	deleteButton
		action: [ self deleteReader ];
		label: 'delete'.