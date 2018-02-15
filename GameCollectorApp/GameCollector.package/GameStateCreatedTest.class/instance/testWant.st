tests
testWant
	| state state2 |
	state := GameStateCreated new.
	state2 := state want.
	self assert: (state2 class) equals: GameStateDesired