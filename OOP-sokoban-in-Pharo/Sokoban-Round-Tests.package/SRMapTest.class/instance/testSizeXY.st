tests
testSizeXY
	| i |
	i := SRMap withSizeX: 2 Y: 5.
	self assert: i sizeX = 2.
	self assert: i sizeY = 5.
	i := SRMap withSizeX: 5 Y: 2.
	self assert: i sizeX = 5.
	self assert: i sizeY = 2.
	i := SRMap withSizeX: 3 Y: 3.
	self assert: i sizeX = 3.
	self assert: i sizeY = 3