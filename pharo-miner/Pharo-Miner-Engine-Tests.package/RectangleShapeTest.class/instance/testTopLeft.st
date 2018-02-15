tests
testTopLeft
	| rect |
	rect := RectangleShape new
		offset: 5 @ 2;
		width: 3;
		height: 8.
	self assert: rect topLeft equals: 3.5 @ -2