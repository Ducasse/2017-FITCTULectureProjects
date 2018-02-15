initialization
initializeWidgets
	readersList := self instantiate: ListModel.
	refreshButton  := self instantiate: ButtonModel.
	deleteButton  := self instantiate: ButtonModel.
	self opened: false.