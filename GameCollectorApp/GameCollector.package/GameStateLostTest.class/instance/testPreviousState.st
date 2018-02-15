tests
testPreviousState
	| prevState state |
	prevState := GameStateBought fromWhere: 'JRC'.
	state := GameStateLost previousState: prevState.
	self assert: state previousState equals: prevState