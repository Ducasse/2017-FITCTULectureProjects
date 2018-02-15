as yet unclassified
editButtonPress
	ContactEditor new contact: (database byID: (mapping at: selectionIndex)); 
	OK: [	:newcontact | database byID: (mapping at: selectionIndex) put: newcontact.
				self changed: #contacts;
				changed: #contactSelected ];
	openModal.
	self changed: #contacts.