initialization
initialize 
	super initialize. 
	primaryButtons := OrderedCollection new. 
	primaryButtons add: (MMButtonModel new text: 'Create new team'; actionNum: 1).
	primaryButtons add: (MMButtonModel new text: 'Load team'; actionNum: 2).
	primaryButtons add: (MMButtonModel new text: 'Level 1'; actionNum: 3).
	primaryButtons add: (MMButtonModel new text: 'Level 2'; actionNum: 4).
	primaryButtons add: (MMButtonModel new text: 'Level 3'; actionNum: 5).