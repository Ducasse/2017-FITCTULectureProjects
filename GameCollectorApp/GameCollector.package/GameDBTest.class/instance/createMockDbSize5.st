mocks
createMockDbSize5
	| db |
	db := GameDB basicNew initialize .
	db add: (Game new withName: 'Skyrim' withPlatform: 'PC'). 
	db add: (Game new withName: 'Oblivion' withPlatform: 'PC'). 
	db add: (Game new withName: 'Morrowind' withPlatform: 'PC'). 	
	db add: (Game new withName: 'GTA V' withPlatform: 'PC'). 
	db add: (Game new withName: 'GTA IV' withPlatform: 'PC'). 
	^db
	