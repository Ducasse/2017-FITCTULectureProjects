tests
testSizeY
	| i a a1 a2 a3 |
	a := Array new: 3.
	a1 := Array new: 2.
	a1 at: 1 put: 1.
	a1 at: 2 put: 2.
	a2 := Array new: 2.
	a2 at: 2 put: 4.
	a3 := Array new: 2.
	a3 at: 2 put: 6.
	a at: 1 put: a1.
	a at: 2 put: a2.
	i := SRMapFromFile withMap: a.
	self assert: i sizeY = 2