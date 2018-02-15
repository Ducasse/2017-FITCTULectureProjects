tests
testSize
	| contact database id |
	database := ContactDatabase new.
	contact := Contact new.
	self assert: database size equals: 0.
	id := (Random new) nextInt: 100000.
	database byID: id put: contact.
	self assert: database size equals: 1.
	database byID: id + 1 put: contact.
	self assert: database size equals: 2.
	database byID: id + 2 put: contact.
	self assert: database size equals: 3.