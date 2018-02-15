tests
testHeight
	| rect |
	rect := RectangleShape new.
	self assert: rect height equals: 1.
	rect height: 2.5.
	self assert: rect height equals: 2.5