tests
testAddContact
	| t |
	t := ContactList new.
	t 	addContact: 'Contact 1';
		addContact: 'Contact 2'.
	self assert: t listView listSize equals: 2