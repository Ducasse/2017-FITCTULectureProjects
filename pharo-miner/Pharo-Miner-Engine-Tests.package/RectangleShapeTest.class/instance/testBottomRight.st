tests
testBottomRight
	| rect |
	rect := RectangleShape new
		offset: 5 @ 2;
		width: 3;
		height: 8.
	self assert: rect bottomRight equals: 6.5 @ 6