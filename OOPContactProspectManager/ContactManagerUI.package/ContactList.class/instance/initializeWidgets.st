initialization
initializeWidgets
	listLabel := self newLabel label: 'Contacts'.
	
	listTools := ListTools new.
		
	listView := self newList.
	listView displayBlock: [ :x | x firstName, ' ', x lastName ].
	
	addButton := self newButton label: 'add'.
	addButton action: [ 
		myAnnouncer announce: AddContactButtonPressed new
	].

	deleteButton := self newButton label: 'delete'.
	deleteButton action: [ 
		|s|
		s := listView selectedItem.
		s ifNotNil: [ 
		myAnnouncer announce: (DeleteContactAnnouncement new contact: s)]
	].
