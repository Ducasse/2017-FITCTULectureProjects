initialization
initialize
	logInForm := LoginForm new initializeWidgets.
	signUpForm := SignUpForm new initializeWidgets.
	appWindow := ContactManagerWindow new initializeWidgets.
	addContactForm := AddContact new initializeWidgets.
	
	logInForm myAnnouncer when: LogInAnnouncement  do: self logInBlock.
	
	logInForm myAnnouncer when: SignUpButtonPressed  do: self signUpButtonPressedBlock.
	
	signUpForm whenAddNewUser: self whenAddNewUserBlock.
	
	appWindow myAnnouncer when: AddContactButtonPressed do: self addContactButtonPressedBlock.
	
	appWindow myAnnouncer when: DeleteContactAnnouncement  do: self deleteContactBlock.
	
	appWindow myAnnouncer when: LogOutButtonPressed do: self logOutBlock.
	
	appWindow myAnnouncer when: AddRemindAnnouncement do: self addReminderBlock.
	
	appWindow myAnnouncer when: DeleteRemindAnnouncement do: self deleteReminderBlock.
	
	appWindow myAnnouncer when: AddCallRecordButtonClicked  do: self addCallRecordButtonBlock.
	
	appWindow myAnnouncer when: DeleteCallRecordAnnouncement do: self deleteCallRecordButtonBlock.
	
	addContactForm whenSelectedUserDo: self addContactBlock