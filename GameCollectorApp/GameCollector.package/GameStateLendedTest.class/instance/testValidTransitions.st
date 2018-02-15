tests
testValidTransitions
	| prevState bag bag2|
	prevState := GameStateBought fromWhere: 'JRC'.
	bag := (GameStateLended toWho: 'Ales' prevState: prevState) validTransitions.
	bag2 := Bag new add: GameStateLost; add: GameStateSold; yourself.
	self assert: bag equals: bag2