tests
testSizeY
	| i |
	i := SRMap withSizeX: 5 Y: 1.
	self assert: i sizeY = 1.
	i := SRMap withSizeX: 5 Y: 2.
	self assert: i sizeY = 2.
	i := SRMap withSizeX: 5 Y: 3.
	self assert: i sizeY = 3