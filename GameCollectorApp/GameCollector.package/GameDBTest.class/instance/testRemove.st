tests
testRemove
	| db g |
	
	g := Game new withName: 'Something else' withPlatform: 'PS4'.
	
	db := self createMockDbSize3.	
	db add: (Game new withName: 'Something' withPlatform: 'PS4'). 	
	db add: g. 	
	db add: (Game new withName: 'Something better' withPlatform: 'Xbox'). 	
	db add: (Game new withName: 'Something for PC' withPlatform: 'PC'). 
	
	db remove: g.
	
	self assert: (db all size) equals: 6. 
	
