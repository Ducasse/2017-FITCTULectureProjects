tests
testType
	| item |
	item := EquipItem new.
	item type: EquipTypeEnum weapon.
	
	self assert: item type equals: EquipTypeEnum weapon.