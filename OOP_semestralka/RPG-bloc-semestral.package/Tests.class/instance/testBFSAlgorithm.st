tests
testBFSAlgorithm
	| board res c |
	board := GameBoard new.
	res := board
		bfs: 1
		Y: 1
		tox: 9
		toy: 9.
	res.
	self assert: res size = 9.
	c := 1.
	res
		do: [ :x | 
			self assert: x x = c & (x y = c).
			c := c + 1 ].
	res := board
		bfs: 1
		Y: 1
		tox: 1
		toy: 1.
	res.
	self assert: res size = 1.
	res := board
		bfs: 1
		Y: 1
		tox: -1
		toy: -1.
	res.
	self assert: res size = 0