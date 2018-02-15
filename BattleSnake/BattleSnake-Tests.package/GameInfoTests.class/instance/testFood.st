tests
testFood
	|g f|
	g:= GameInfo new.
	f:= { 1@2. 4@5 }.
	g food: f .
	self assert: g food equals: f .
