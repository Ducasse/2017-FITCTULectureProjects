tests
testEmptyCanBeAccessed
	|emptyTile|
	emptyTile := EmptyTile new.
	self assert: emptyTile canBeAccessed.