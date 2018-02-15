initialization
initializeWidgets
	usernameLabel  := self newLabel label: 'Username*:'.
	firstNameLabel  := self newLabel label: 'First name*:'.
	lastNameLabel  := self newLabel label: 'Last name*:'.
	passwordLabel  := self newLabel label: 'Password*:'.
	emailLabel := self newLabel label: 'Email:'.
	addressLabel  := self newLabel label: 'Address:'.
	phoneNumberLabel := self newLabel label: 'Phone number:'.
	roleLabel := self newLabel label: 'Role in company:'.
	companyLabel := self newLabel label: 'Company:'.
	
	usernameField :=  self newTextInput wantsVisualFeedback: false; autoAccept: true.
	firstNameField  :=  self newTextInput wantsVisualFeedback: false; autoAccept: true.
	lastNameField  := self newTextInput wantsVisualFeedback: false; autoAccept: true.
	passwordField  := self newTextInput wantsVisualFeedback: false; autoAccept: true.
	addressField  := self newTextInput wantsVisualFeedback: false; autoAccept: true.
	emailField := self newTextInput wantsVisualFeedback: false; autoAccept: true.
	phoneNumberField := self newTextInput wantsVisualFeedback: false; autoAccept: true.
	roleField := self newTextInput wantsVisualFeedback: false; autoAccept: true.
	companyField := self newTextInput wantsVisualFeedback: false; autoAccept: true.
	
	submitButton := self newButton label: 'Submit';
		action: [self editUser. myAnnouncer announce: (EditUserAnnouncement new user: user; yourself). ].
		
	discardButton := self newButton label: 'Discard';
		action: [self user: user].
		
	self initFocusOrder