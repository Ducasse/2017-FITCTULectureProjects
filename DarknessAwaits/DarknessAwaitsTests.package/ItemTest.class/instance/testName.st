tests
testName
	| item |
	item := EquipItem new.
	item name: 'Powerful sword'.
	
	self assert: item name equals: 'Powerful sword'.