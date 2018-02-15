tests
testContainsPoint
	| rect |
	rect := RectangleShape new
		offset: 5 @ 2;
		width: 3;
		height: 8.
	self assert: (rect containsPoint: rect offset).
	self assert: (rect containsPoint: 4 @ 4).
	self assert: (rect containsPoint: 0 @ 0) not.
	self assert: (rect containsPoint: 6.5 @ 6)