tests
testY
	|fs y|
	y := 15.
	
	fs := FieldStruct new y: y.
	self assert: fs y == y.