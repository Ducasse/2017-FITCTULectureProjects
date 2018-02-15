tests
testSnakeCanBeAccessed
	|snakeTile|
	snakeTile := SnakeTile new.
	self assert: (snakeTile canBeAccessed) not.
	