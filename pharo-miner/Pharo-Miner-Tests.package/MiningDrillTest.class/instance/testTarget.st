tests
testTarget
	| d t |
	d := MiningDrill new.
	self assert: d target isNil.
	t := Tile new.
	d target: t.
	self assert: d target equals: t.