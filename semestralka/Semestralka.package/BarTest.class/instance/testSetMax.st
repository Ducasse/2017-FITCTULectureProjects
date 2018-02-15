tests-setter
testSetMax
	| bar |
	bar := Bar new: 100.

	"new value is > max"
	self assert: (bar setMax: 200) getMax equals: 200.

	"new value is < actualValue"
	bar
		setActualValue: 50;
		setMax: 20.
	self assert: bar getMax equals: 20.
	self assert: bar getActualValue equals: 20.

	"new value is < min"
	self assert: (bar setMax:-3) getMax equals: 0.
	self assert: (bar getMin) equals: -3.
	self assert: (bar getActualValue) equals: 0.