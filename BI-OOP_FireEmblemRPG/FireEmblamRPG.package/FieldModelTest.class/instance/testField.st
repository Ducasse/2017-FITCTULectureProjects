tests
testField
	|fm field|
	field := FieldStruct new type: Enum road.
	fm := FieldModel new field: field.
	
	self assert: fm field type == Enum road.