tests
testConvertCoordinates
	| s |
	s := Scene new.
	self assert: (s convertCoordinates: 0@0) equals: s size / 2.
	self assert: (s convertCoordinates: 12@38) equals: s size / 2 + (12@ -38)