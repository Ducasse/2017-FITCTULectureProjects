initialization
calculateMaxHealth
	health := self healthMinimum + ((attributes getAttributeOfType: AttributeTypeEnum vitality) / 5) asInteger 