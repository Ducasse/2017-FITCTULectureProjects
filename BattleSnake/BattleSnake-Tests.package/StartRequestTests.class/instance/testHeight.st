tests
testHeight
	|s|
	s:= StartRequest new.
	s height:  100.
	self assert: s height  equals: 100.