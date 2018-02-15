tests
testSize
	| i a a1 a2 |
	a := Array new: 2.
	a1 := Array new: 2.
	a1 at: 1 put: 1.
	a1 at: 2 put: 2.
	a2 := Array new: 2.
	a2 at: 1 put: 3.
	a2 at: 2 put: 4.
	a at: 1 put: a1.
	a at: 2 put: a2.
	i := SRMapForGraphic withMap: a.
	self assert: (i map size) = 4.