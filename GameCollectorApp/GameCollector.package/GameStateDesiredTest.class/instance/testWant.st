tests
testWant
	| state state2 |
	state := GameStateDesired new.
	state2 := state want.
	self assert: (state) equals: state2