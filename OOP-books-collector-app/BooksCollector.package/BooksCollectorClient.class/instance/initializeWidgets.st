initialization
initializeWidgets
	booksButton:= self instantiate: ButtonModel.
	addBookButton:= self instantiate: ButtonModel.
	readersButton:= self instantiate: ButtonModel.
	addReaderButton:= self instantiate: ButtonModel.
	borrowingsButton:= self instantiate: ButtonModel.
	addBorrowingButton:= self instantiate: ButtonModel.
	urlButton:= self instantiate: ButtonModel.
	urlTextField:= self instantiate: TextInputFieldModel.
	self initApp.
	initialized:= false.

	