tests
testTurn
	|g|
	g:= GameInfo  new.
	g turn:  100.
	self assert: g turn equals: 100.