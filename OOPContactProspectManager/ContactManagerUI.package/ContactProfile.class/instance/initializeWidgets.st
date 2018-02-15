initialization
initializeWidgets
	nameLabel := self newLabel.
	emailLabel := self newLabel.
	phoneNumberLabel := self newLabel.
	roleInCompanyLabel := self newLabel.
	companyLabel := self newLabel.
	
	addReminderButton := self newButton label: 'remind'.
	addReminderButton action: [ 
		|n|
		n := UserNotification new.
		n data: contact firstName , ' ', contact lastName.
		n date: reminderDateField textHolder value.
		myAnnouncer announce: (AddRemindAnnouncement new notification: n) 
	].
	
	reminderDateLabel := self newLabel label: 'Date:'.
	reminderDateField := self newTextInput.
	reminderDateField wantsVisualFeedback: false; autoAccept:true. 