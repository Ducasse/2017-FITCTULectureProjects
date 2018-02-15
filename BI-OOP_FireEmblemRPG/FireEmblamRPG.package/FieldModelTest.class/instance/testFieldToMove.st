tests
testFieldToMove
	|fm field|
	field := FieldStruct new type: Enum me.
	fm := FieldModel new field: field.
	
	self assert: fm fieldToMove not.
	
	field type: Enum wall.
	fm field: field.
	
	self assert: fm fieldToMove not.
	
	field type: Enum road.
	fm field: field.
	
	self assert: fm fieldToMove.