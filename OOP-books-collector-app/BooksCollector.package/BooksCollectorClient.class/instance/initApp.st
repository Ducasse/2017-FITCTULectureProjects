initialization
initApp
	UIs:= Dictionary new.
	UIs at: 'AddBookUI' put: NullUI new.
	UIs at: 'AddReaderUI' put: NullUI new.
	UIs at: 'AddBorrowingUI' put: NullUI new.
	UIs at: 'BooksUI' put: NullUI new.
	UIs at: 'BorrowingsUI' put: NullUI new.
	UIs at: 'ReadersUI' put: NullUI new.

	