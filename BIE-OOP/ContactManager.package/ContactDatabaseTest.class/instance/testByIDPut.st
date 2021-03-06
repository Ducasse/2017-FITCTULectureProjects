tests
testByIDPut
	| contact database id |
	database := ContactDatabase new.
	contact := Contact new.
	self assert: database size equals: 0.
	id := (Random new) nextInt: 100000.
	database byID: id put: contact.
	self assert: database size equals: 1.
	self assert: (database byID: id) equals: contact.