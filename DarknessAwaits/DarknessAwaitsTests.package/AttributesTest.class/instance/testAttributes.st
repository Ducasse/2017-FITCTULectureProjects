tests
testAttributes
	|att1 att2|
	att1 := Attributes new.
	att1 addValue: 5 at: AttributeTypeEnum luck.
	
	self assert: 5 == (att1 getAttributeOfType: AttributeTypeEnum luck).
	
	att2 := Attributes new.
	att2 addValue: 5 at: AttributeTypeEnum luck.
	att2 addValue: 5 at: AttributeTypeEnum strenght.
	
	att1 := att1 + att2.
	
	self assert: 10 == (att1 getAttributeOfType: AttributeTypeEnum luck).
	self assert: 5 == (att1 getAttributeOfType: AttributeTypeEnum strenght).
