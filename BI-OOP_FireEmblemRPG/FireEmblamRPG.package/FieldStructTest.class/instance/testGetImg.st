tests
testGetImg
	|fs|
	
	fs := FieldStruct new type: Enum road.
	self assert: fs getImg = 'road.png'.