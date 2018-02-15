tests
testWidth
	|s|
	s:= StartRequest new.
	s width: 100.
	self assert: s width equals: 100.