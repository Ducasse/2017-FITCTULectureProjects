tests
testEquipItem
	|item hero eq|
	hero := Hero initializeWithName: 'Hero'.
	
	item := DefenseItem new.
	item name: 'item'.
	item equipBodyPart: BodyPartEnum head.
	
	hero equipItem: item.
	eq := hero equipment getEquipAtBodyPart: BodyPartEnum head.
	self assert: eq name == 'item'.