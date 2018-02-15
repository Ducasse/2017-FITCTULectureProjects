initialization
initialize 
	super initialize. 
	primaryButtons := OrderedCollection new. 
	primaryButtons add: (ChCButtonModel new text: 'Healer'; actionNum: 1).
	primaryButtons add: (ChCButtonModel new text: 'Hunter'; actionNum: 2).
	primaryButtons add: (ChCButtonModel new text: 'Mage'; actionNum: 3).
	primaryButtons add: (ChCButtonModel new text: 'Rogue'; actionNum: 4).
	primaryButtons add: (ChCButtonModel new text: 'Swordman'; actionNum: 5).
	primaryButtons add: (ChCButtonModel new text: 'Tank'; actionNum: 6).