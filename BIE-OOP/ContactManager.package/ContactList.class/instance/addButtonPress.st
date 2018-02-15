adding
addButtonPress
	| newContact |
	newContact := Contact new.
	ContactEditor new contact: newContact;
		OK: [	:dummy | selectionIndex := (database size) + 1.
				mapping addLast: (database addContact: newContact).
				self changed: #contacts;
				changed: #contactSelected ];
			openModal.