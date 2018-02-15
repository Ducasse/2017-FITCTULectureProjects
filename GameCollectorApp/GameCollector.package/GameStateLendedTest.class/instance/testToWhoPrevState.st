tests
testToWhoPrevState
	| prevState state |
	prevState := GameStateBought fromWhere: 'JRC'.
	state := GameStateLended toWho: 'Ales' prevState: prevState.
	self assert: (state previousState) equals: prevState.
	self assert: (state class) equals: GameStateLended.
	self assert: (state person) equals: 'Ales'.
	