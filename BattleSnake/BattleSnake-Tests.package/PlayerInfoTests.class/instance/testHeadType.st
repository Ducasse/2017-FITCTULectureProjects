tests
testHeadType
	|s|
	s := PlayerInfo new.
	s headType:  'pixel'.
	self assert: s headType  equals: 'pixel'.