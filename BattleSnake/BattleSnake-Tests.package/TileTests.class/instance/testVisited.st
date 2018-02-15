tests
testVisited
	|snakeTile|
	snakeTile := SnakeTile new.
	snakeTile initialize.
	snakeTile visited: true.
	self assert: snakeTile visited equals: true.
	