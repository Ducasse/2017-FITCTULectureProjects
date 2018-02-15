tests
testFromPerson
	| state |
	state := GameStateBorrowed fromPerson: 'Ales'.
	self assert: state person equals: 'Ales'.