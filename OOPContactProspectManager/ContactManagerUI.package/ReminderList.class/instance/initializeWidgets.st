initialization
initializeWidgets
	listLabel := self newLabel label: 'Dont forget to call:'.		
	listView := self newList.
	listView displayBlock: [ :x | 'Call to ', x data, ' at ', x date].
	
	deleteButton := self newButton label: 'delete'.
	deleteButton action: [ 
		|s|
		s := listView selectedItem.
		s ifNotNil: [ 
		listView resetSelection.
		myAnnouncer announce: (DeleteRemindAnnouncement new notification: s)]
	].
	
		
