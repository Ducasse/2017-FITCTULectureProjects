tests
testWidth
	|g|
	g:= GameInfo  new.
	g width:  100.
	self assert: g width equals: 100.