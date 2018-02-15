tests
testWant
	| state state2 |
	state := GameStateBorrowed fromPerson: 'Ales'.
	state2 := state want.
	self assert: (state) equals: state2