tests
testAddObjectToXY
	| i o |
	i := SRMap withSizeX: 2 Y: 2.
	o := Object new.
	i addObject: o toX: 2 Y: 2.
	self assert: (i getObjectFromX: 2 Y: 2) = o.
	o := Object new.
	i addObject: o toX: 1 Y: 2.
	self assert: (i getObjectFromX: 1 Y: 2) = o.
	o := Object new.
	i addObject: o toX: 1 Y: 1.
	self assert: (i getObjectFromX: 1 Y: 1) = o