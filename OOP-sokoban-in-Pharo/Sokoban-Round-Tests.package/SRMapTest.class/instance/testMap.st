tests
testMap
	| i o1 o2 o3 |
	i := SRMap withSizeX: 2 Y: 2.
	o1 := Object new.
	o2 := Object new.
	o3 := Object new.
	i addObject: o1 toX: 1 Y: 1.
	i addObject: o2 toX: 1 Y: 2.
	i addObject: o3 toX: 2 Y: 2.
	self assert: (i map isMemberOf: Array).
	self assert: ((i map at: 1) isMemberOf: Array).
	self assert: ((i map at: 2) isMemberOf: Array).
	self assert: ((i map at: 1) at: 1) = o1.
	self assert: ((i map at: 1) at: 2) = o2.
	self assert: ((i map at: 2) at: 1) = nil.
	self assert: ((i map at: 2) at: 2) = o3