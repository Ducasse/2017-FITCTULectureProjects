tests
testAccess
	|fs|
	
	fs := FieldStruct new access: false.
	self assert: fs accessable not.