tests
testId
	|s|
	s:= StartRequest new.
	s gameId:   100.
	self assert: s gameId   equals: 100.