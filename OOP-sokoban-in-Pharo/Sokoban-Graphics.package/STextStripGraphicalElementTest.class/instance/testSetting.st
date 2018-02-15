tests
testSetting
	self assert: (STextStripGraphicalElement new changeText: 'Ahoj'; text) equals: 'Ahoj'.
	self assert: (STextStripGraphicalElement new changeText: 'Ahoj'; changeText: 'Lidi'; text) equals: 'Lidi'.
	self assert: (STextStripGraphicalElement new changeText: 'Ahoj'; changeText: 'Lidi'; changeText: ' '; text) equals: ' '