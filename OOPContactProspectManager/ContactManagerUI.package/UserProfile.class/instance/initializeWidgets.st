initialization
initializeWidgets
	photo := self newImage.
	photo image: #user asIcon.
	photo switchAutoscale.
	
	userNameLabel := self newLabel.
	
	homeButton := self newButton.
	homeButton label: ''; icon: #home asIcon;
			action: [self myAnnouncer announce: (HomeButtonPressed new user: user)].
	
	logOutButton := self newButton.
	logOutButton label: 'Log out';
			action: [self myAnnouncer announce: (LogOutButtonPressed new)].
			
	self focusOrder
		add: photo;
		add: userNameLabel.