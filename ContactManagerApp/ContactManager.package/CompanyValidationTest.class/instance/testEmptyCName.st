tests
testEmptyCName
	| c |
	c := Company new.
	self assert: c isValid equals: false