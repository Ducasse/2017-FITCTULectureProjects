initialization
initializeWidgets
	booksList := self instantiate: ListModel.
	refreshButton := self instantiate: ButtonModel.
	deleteButton := self instantiate: ButtonModel.
	incrButton := self instantiate: ButtonModel.
	decrButton := self instantiate: ButtonModel.
	self opened: false.