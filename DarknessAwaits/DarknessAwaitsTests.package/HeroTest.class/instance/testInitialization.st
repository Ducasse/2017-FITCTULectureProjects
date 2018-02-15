tests
testInitialization
	|hero|
	hero := Hero initializeWithName: 'Hero'.
	
	self assert: hero name == 'Hero'.
	self assert: hero health > 10.
	self assert: (hero attributes getAttributeOfType: AttributeTypeEnum luck) > 7.