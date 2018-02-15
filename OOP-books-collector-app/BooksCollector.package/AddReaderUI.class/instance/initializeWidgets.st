initialization
initializeWidgets
	idTextField:= self instantiate: TextInputFieldModel.
	firstNameTextField:= self instantiate: TextInputFieldModel. 
	lastNameTextField:= self instantiate: TextInputFieldModel.
	nationalityTextField:= self instantiate: TextInputFieldModel.
	birthYearTextField:= self instantiate: TextInputFieldModel.
	addButton:= self instantiate: ButtonModel.
	self setFocus.
	self opened: false.