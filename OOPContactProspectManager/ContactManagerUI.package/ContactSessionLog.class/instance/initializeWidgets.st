initialization
initializeWidgets
	listLabel := self newLabel label: 'Call history'.
	sessionList := self newList.
	sessionList displayBlock: [ :x | x reciever, ' at ', x date].
	
	dateField  := self newTextInput.
	dateField wantsVisualFeedback: false; autoAccept: true.
	dateLabel  := self newLabel label: 'Date:'.
	
	addSessionButton  := self newButton label: 'add'.
	addSessionButton action: [ 
		myAnnouncer announce: (AddCallRecordButtonClicked new date: dateField textHolder value).
	].

	deleteSessionButton := self newButton label: 'delete'.
	deleteSessionButton action: [ 
		|s|
		s := sessionList selectedItem.
		s ifNotNil: [ 
			sessionList resetSelection.
			myAnnouncer announce:(
				DeleteCallRecordAnnouncement new
				callRecord: s
			)
		]
	].