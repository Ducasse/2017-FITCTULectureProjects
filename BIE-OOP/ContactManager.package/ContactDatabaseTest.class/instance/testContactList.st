tests
testContactList
	| contact database id |
	database := ContactDatabase new.
	contact := Contact new.
	self assert: database size equals: 0.
	id := (Random new) nextInt: 100000.
	database byID: id put: contact.
	self assert: database contactList size equals: 1.