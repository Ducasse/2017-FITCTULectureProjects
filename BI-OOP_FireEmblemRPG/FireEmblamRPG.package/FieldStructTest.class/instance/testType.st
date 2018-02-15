tests
testType
	|fs type|
	type := Enum road.
	
	fs := FieldStruct new type: type.
	self assert: fs type == type.