tests
testNew
	| state |
	state := GameStateDesired new.
	self assert: (state class) equals: GameStateDesired.