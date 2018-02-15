initialization
initializeWidgets
	borrowingsList := self instantiate: ListModel.
	readersList := self instantiate: ListModel.
	refreshReadersButton  := self instantiate: ButtonModel.
	returnBookButton :=self instantiate: ButtonModel.
	self opened: false.