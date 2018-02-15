tests
testAddContact
	| contact database id |
	database := ContactDatabase new.
	contact := Contact new.
	self assert: database size equals: 0.
	id := database addContact: contact.
	self assert: database size equals: 1.