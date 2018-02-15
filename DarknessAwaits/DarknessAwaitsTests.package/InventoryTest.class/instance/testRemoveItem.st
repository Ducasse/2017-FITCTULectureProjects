adding
testRemoveItem
	| inventory b c|
	inventory := Inventory new.

	b := EquipItem new.
	b type: EquipTypeEnum weapon.
	b name: 'Berserker'. 
	inventory addItem: b.

	c := EquipItem new.
	c type: EquipTypeEnum weapon.
	c name: 'God of war'.
	inventory addItem: c.

	self assert: inventory items size equals: 2.
	
	inventory removeItem: b.
	
	self assert: inventory items size equals: 1.
	