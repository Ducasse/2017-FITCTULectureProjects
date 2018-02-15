tests
testDescription
	| item |
	item := EquipItem new.
	item description: 'The best of the best'.
	
	self assert: item description equals: 'The best of the best'.