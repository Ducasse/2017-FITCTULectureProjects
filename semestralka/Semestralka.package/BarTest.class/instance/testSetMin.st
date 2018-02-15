tests-setter
testSetMin
	| bar |
	bar := Bar new: 100.

	"new value is < min"
	self assert: (bar setMin: -3) getMin equals: -3.

	"new value is > actualValue"
	self assert: (bar setMin: 10) getMin equals: 10.
	self assert: bar getActualValue equals: 10.

	"new value is > max"
	self assert: ((bar setMin: 200) getMin) equals: 100.
	self assert: (bar getMax) equals: 200.
	self assert: (bar getActualValue) equals: 100. 