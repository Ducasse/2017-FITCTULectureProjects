initialization
initializeWidgets
	idTextField:= self instantiate: TextInputFieldModel. 
	titleTextField:= self instantiate: TextInputFieldModel.
	genreTextField:= self instantiate: TextInputFieldModel.
	yearTextField:= self instantiate: TextInputFieldModel.
	writerTextField:= self instantiate: TextInputFieldModel.
	publisherTextField:= self instantiate: TextInputFieldModel.
	countTextField:= self instantiate: TextInputFieldModel.
	addButton:= self instantiate: ButtonModel.
	self setFocus.
	self opened: false.