tests
testWithXY
	| map |
	map := Map withX: 20 Y: 30.
	self assert: map sizeX equals: 20.
	self assert: map sizeY equals: 30.