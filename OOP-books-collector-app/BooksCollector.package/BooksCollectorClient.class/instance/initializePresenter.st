initialization
initializePresenter
	booksButton
		"action: [ initialized ifTrue: [BooksUI new open: self url] ];"
		action: [ (UIs at: 'BooksUI') open: self url ]; " example of using null object pattern"
		label: 'books'.
	addBookButton
		action: [ (UIs at: 'AddBookUI') open: self url ];
		label: 'add book'.
	readersButton
		action: [ (UIs at: 'ReadersUI') open: self url ];
		label: 'readers'.
	addReaderButton
		action: [ (UIs at: 'AddReaderUI') open: self url ];
		label: 'add reader'.
	borrowingsButton
		action: [ (UIs at: 'BorrowingsUI') open: self url ];
		label: 'borrowings'.
	addBorrowingButton
		action: [ (UIs at: 'AddBorrowingUI') open: self url ];
		label: 'add borrowing'.
	urlTextField
		ghostText: 'Enter url';
		autoAccept: true.
	urlButton
		action: [
			| inputUrl |
			inputUrl := urlTextField text.
			(inputUrl = '') ifTrue: [ inputUrl:= 'error' ].
			(inputUrl beginsWith:  '/') ifTrue: [ inputUrl:= 'error' ].
			self url: 'http://', inputUrl.
			[ ZnEasy get: (self url, '/books').
				urlButton icon: (Smalltalk ui icons glamorousAccept ).
				urlTextField disable.
				initialized:=true.
				self initUIs.
			]
			on: ConnectionTimedOut do: [ self url: ''. ].
		];
		icon: (self iconNamed: #error) ;
		label: 'Connect'.