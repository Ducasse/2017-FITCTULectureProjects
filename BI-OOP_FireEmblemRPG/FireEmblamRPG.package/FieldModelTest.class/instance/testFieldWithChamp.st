tests
testFieldWithChamp
	|fm field|
	field := FieldStruct new type: Enum me.
	fm := FieldModel new field: field.
	
	self assert: fm field type == Enum me.
	self assert: fm fieldWithChamp not.
	
	field champion: Champion new.
	fm field: field.
	
	self assert: fm fieldWithChamp.