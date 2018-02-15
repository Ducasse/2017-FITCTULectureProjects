tests
testHeight
	|g|
	g:= GameInfo  new.
	g height:  100.
	self assert: g height  equals: 100.