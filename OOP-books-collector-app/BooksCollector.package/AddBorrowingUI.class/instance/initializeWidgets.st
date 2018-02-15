initialization
initializeWidgets
	refreshBooksButton:= self instantiate: ButtonModel.
	refreshReadersButton:= self instantiate: ButtonModel.
	addBorrowingButton:= self instantiate: ButtonModel.
	readersList := self instantiate: ListModel.
	booksList := self instantiate: ListModel.
	self opened: false.