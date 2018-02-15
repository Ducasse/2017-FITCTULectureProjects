initialization
initializeWidgets
	myAnnouncer := Announcer new.

	loginLabel  := self newLabel label: 'Login:'.
	loginInput  := self newTextInput.
	loginInput wantsVisualFeedback: false; autoAccept: true.
	
	passwordLabel  := self newLabel label: 'Password:'.
	passwordInput  := self newTextInput.
	passwordInput wantsVisualFeedback: false; autoAccept: true.
	
	warningIcon := self newImage image: #halt asIcon.
	warningText := self newLabel label: 'Incorrect login or password'.
	loginButton := self newButton label: 'Log in';
		action: [
			|a|
			a := LogInAnnouncement new.
			a login: (loginInput textHolder value); 
				password: (passwordInput textHolder value).
				
			self myAnnouncer announce: a
				].
			
	signUpButton := self newButton label: 'Sign up';
		action: [self myAnnouncer announce: SignUpButtonPressed new. self window close.].
		
	self focusOrder
		add: loginInput;
		add: passwordInput