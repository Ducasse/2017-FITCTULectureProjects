initialization
initializePresenter
	self whenWindowChanged: [ :w | w whenClosedDo: [ self opened: false. ] ].
	idTextField
		ghostText: 'id';
		autoAccept: true.
	firstNameTextField
		ghostText: 'first name';
		autoAccept: true. 
	lastNameTextField
		ghostText: 'last name';
		autoAccept: true.
	nationalityTextField
		ghostText: 'nationality';
		autoAccept: true.
	birthYearTextField
		ghostText: 'birth year';
		autoAccept: true.

	addButton
		action: [
			(self checkInput)
			ifTrue:[
				self addReader.
				self clearTextFields.
				addButton icon: nil.
			]
			ifFalse: [ addButton icon: (self iconNamed: #error) ]
		];
		label: 'add reader'.