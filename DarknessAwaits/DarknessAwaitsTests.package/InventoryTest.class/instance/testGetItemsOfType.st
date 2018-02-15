adding
testGetItemsOfType
	| a b c d e |
	a := Inventory new.
	b := EquipItem new.
	b type: EquipTypeEnum weapon.
	b name: 'Berserker'.
	
	a addItem: b.
	
	c := EquipItem new.
	c type: EquipTypeEnum weapon.
	c name: 'God of war'.
	
	a addItem: c.
	
	d := EquipItem new.
	d type: EquipTypeEnum helm.
	d name: 'Apple of archer'.
	
	a addItem: d.
	
	e := EquipItem new.
	e type: EquipTypeEnum footgear.
	e name: 'Tidals'.
	
	a addItem: e.
	
	self assert: (a getItemsOfType: EquipTypeEnum weapon) size equals: 2