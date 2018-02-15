tests
testWidthHeight
	| board |
	board := Board width: 18 height: 15.
	self assert: board width equals: 18.
	self assert: board height equals: 15