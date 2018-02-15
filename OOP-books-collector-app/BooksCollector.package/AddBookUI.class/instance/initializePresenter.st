initialization
initializePresenter
	self whenWindowChanged: [ :w | w whenClosedDo: [ self opened: false. ] ].
	idTextField
		ghostText: 'id';
		autoAccept: true.
	titleTextField
		ghostText: 'title';
		autoAccept: true.
	genreTextField
		ghostText: 'genre';
		autoAccept: true.
	yearTextField
		ghostText: 'year';
		autoAccept: true.
	writerTextField
		ghostText: 'writer';
		autoAccept: true.
	publisherTextField
		ghostText: 'publisher';
		autoAccept: true.
	countTextField
		ghostText: 'count';
		autoAccept: true.
	addButton
		action: [
			(self checkInput)
			ifTrue: [
				self addBook.
				self clearTextFields.
				addButton icon: nil.
			]
			ifFalse: [ addButton icon: (self iconNamed: #error) .]
		];
		label: 'add book'.