removing
removeButtonPress
	database removeByID: (mapping at: selectionIndex).
	mapping removeAt: selectionIndex.
	self selectionIndex: (self selectionIndex min: database size); changed: #contacts.