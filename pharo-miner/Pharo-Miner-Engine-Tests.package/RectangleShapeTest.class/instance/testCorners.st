tests
testCorners
	| rect |
	rect := RectangleShape new
		offset: 5 @ 2;
		width: 3;
		height: 8.
	self assertCollection: rect corners hasSameElements: { 3.5@6 . 6.5@6 . 3.5 @ -2 . 6.5@ -2 }