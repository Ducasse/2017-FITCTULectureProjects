tests
testGetEquipAtBodyPart
	| equipment item1  |
	equipment := Equipment new.
	
	item1 := EquipItem new.
	
	"CREATE TEST OBJECT"
	item1
		name: 'Huricane blade';
		type: EquipTypeEnum weapon;
		description: 'massive weapon with sharp blade';
		equipBodyPart: BodyPartEnum righthand.
	
	"INSERT TEST OBJECT INTO EQUIPMENT INSTANCE"
	equipment equipItem: item1.
	
	"TEST IF EQUIPMENT SET ITEM'S STATUS TO EQUIPED"
	self assert: item1 isEquiped equals: true. 
	"TEST IF WE CAN FIND THE ITEM AT POSSITION THAT IT SHOULD BE"
	self assert: (equipment getEquipAtBodyPart: BodyPartEnum righthand) name equals: 'Huricane blade'.