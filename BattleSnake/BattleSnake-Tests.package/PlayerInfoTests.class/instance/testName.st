tests
testName
	|s|
	s := PlayerInfo new.
	s name:  'snakeman'.
	self assert: s name equals: 'snakeman'.