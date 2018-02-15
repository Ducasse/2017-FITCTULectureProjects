adding
addContact: aContact
	database at: id put: aContact.
	id := id + 1.
	^ (id - 1).