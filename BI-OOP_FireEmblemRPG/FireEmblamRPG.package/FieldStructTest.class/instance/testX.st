tests
testX
	|fs x|
	x := 15.
	
	fs := FieldStruct new x: x.
	self assert: fs x == x.