tests
testEquipItem
	| equipment item1 item2 |
	equipment := Equipment new.
	
	item1 := EquipItem new.
	item2 := EquipItem new.
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
	
	"CREATE TEST OBJECT 2"
	item2
		name: 'Crossbow';
		type: EquipTypeEnum weapon;
		description: 'Look where you aim, it HURTS!';
		equipBodyPart: BodyPartEnum righthand.
		
	"INSERT TEST OBJECT INTO EQUIPMENT INSTANCE"
	equipment equipItem: item2.
	
	"TEST IF ITEM'S STATUS IS SET TO UNEQUIPED AFTER IT IS REPLACED BY OTHER ITEM"
	self assert: item1 isEquiped equals: false. 
	"TEST IF EQUIPMENT SET ITEM'S STATUS TO EQUIPED"
	self assert: item2 isEquiped equals: true. 
	self assert: (equipment getEquipAtBodyPart: BodyPartEnum righthand) name equals: 'Crossbow'.