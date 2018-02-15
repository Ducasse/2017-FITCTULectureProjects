tests
testInitialize
	|mapModel|
	mapModel := MapModel new.
	self assert: mapModel tiles class equals:  Matrix.
	self assert: mapModel start equals: nil.
	self assert: mapModel end equals: nil.
	