tests
testWidth
	| rect |
	rect := RectangleShape new.
	self assert: rect width equals: 1.
	rect width: 2.5.
	self assert: rect width equals: 2.5.