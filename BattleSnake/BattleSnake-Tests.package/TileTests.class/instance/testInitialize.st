tests
testInitialize
	|snakeTile|
	snakeTile := SnakeTile new.
	snakeTile initialize.
	self assert: snakeTile visited equals: false.
	