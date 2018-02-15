tests
testSizeX
	| i |
	i := SRMap withSizeX: 1 Y: 5.
	self assert: i sizeX = 1.
	i := SRMap withSizeX: 2 Y: 5.
	self assert: i sizeX = 2.
	i := SRMap withSizeX: 3 Y: 5.
	self assert: i sizeX = 3