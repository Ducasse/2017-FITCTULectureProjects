tests
testSizeX
	| map |
	map := Map withX: 20 Y: 30.
	map sizeX: 15.
	^self assert: map sizeX = 15.