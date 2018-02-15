tests
testGetEquipmentBonusAttributes
	 | equipment item1 attributes|
	equipment := Equipment new.
	item1 := WeaponItem new.
	
	"CREATE TEST OBJECT"
	item1
		name: 'Huricane';
		type: EquipTypeEnum weapon;
		equipBodyPart: BodyPartEnum righthand;
		addAffectedAttributeValue: 5 at: AttributeTypeEnum agility;
		addAffectedAttributeValue: 3 at: AttributeTypeEnum agility;
		addAffectedAttributeValue: 10 at: AttributeTypeEnum vitality.  
	
	"INSERT TEST OBJECT INTO EQUIPMENT INSTANCE"	
	equipment equipItem: item1.
	
	attributes := equipment getEquipmentBonusAttributes.
	
	self assert: (attributes getAttributeOfType: AttributeTypeEnum agility) equals: 8.
	self assert: (attributes getAttributeOfType: AttributeTypeEnum vitality ) equals: 10.
	