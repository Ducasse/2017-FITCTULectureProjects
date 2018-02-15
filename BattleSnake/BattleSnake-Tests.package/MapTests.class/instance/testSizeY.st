tests
testSizeY
	| map |
	map := Map withX: 20 Y: 30.
	map sizeY: 15.
	^self assert: map sizeY = 15.