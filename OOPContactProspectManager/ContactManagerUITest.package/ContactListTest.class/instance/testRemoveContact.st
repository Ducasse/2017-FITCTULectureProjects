tests
testRemoveContact
	| t l |
	t := ContactList new.
	l := LinkedList new.
	l 	add: 'Contact 1';
		add: 'Contact 2'.
	t contactList: l.
	t removeContact: 'Contact 1'.
	self assert: t listView listSize equals: 1