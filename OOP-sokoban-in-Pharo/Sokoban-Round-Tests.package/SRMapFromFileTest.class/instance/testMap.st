tests
testMap
	| i a a1 a2 |
	a := Array new: 2.
	a1 := Array new: 2.
	a1 at: 1 put: 1.
	a1 at: 2 put: 2.
	a2 := Array new: 2.
	a2 at: 2 put: 4.
	a at: 1 put: a1.
	a at: 2 put: a2.
	i := SRMapFromFile withMap: a.
	self assert: (i getObjectFromX: 1 Y: 1) = 1.
	self assert: (i getObjectFromX: 1 Y: 2) = 2.
	self assert: (i getObjectFromX: 2 Y: 1) = nil.
	self assert: (i getObjectFromX: 2 Y: 2) = 4