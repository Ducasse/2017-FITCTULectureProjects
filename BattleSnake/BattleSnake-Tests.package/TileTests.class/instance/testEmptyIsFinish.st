tests
testEmptyIsFinish
	|emptyTile|
	emptyTile := EmptyTile new.
	self assert: emptyTile isFinish not.