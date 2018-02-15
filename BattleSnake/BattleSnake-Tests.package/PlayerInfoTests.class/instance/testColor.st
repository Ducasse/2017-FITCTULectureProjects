tests
testColor
	|s|
	s := PlayerInfo new.
	s color: 'red'.
	self assert: s color equals: 'red'.