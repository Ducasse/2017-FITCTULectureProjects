adding
testAddItem
	| inventory a |
	a := EquipItem new.
	a type: AttributeTypeEnum agility.
	inventory := Inventory new.
	inventory addItem: a.
	self assert: inventory items size equals: 1.