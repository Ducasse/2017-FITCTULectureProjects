tests
testValidTransitions
	| prevState bag bag2|
	prevState := GameStateBought fromWhere: 'JRC'.
	bag := (GameStateLost previousState: prevState) validTransitions.
	bag2 := Bag new.
	self assert: bag equals: bag2