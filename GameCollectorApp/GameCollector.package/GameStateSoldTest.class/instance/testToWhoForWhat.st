tests
testToWhoForWhat
	| state |
	state := GameStateSold toWho: 'aPerson' forWhat: 123.
	self assert: state class equals: GameStateSold.
	self assert: state person equals: 'aPerson'.
	self assert: state price equals: 123 