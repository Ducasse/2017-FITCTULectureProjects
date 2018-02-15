tests
testWant
	| state state2 |
	state := GameStateSold toWho: 'aPerson' forWhat: 123.
	state2 := state want.
	self assert: state2 class equals: GameStateDesired.