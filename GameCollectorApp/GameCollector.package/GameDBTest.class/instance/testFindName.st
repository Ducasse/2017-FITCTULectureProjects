tests
testFindName
	| db |
	
	db := self createMockDbSize3.	
	self assert: (db all size) equals: 3. 	
	db add: (Game new withName: 'Something' withPlatform: 'PS4'). 	
	db add: (Game new withName: 'Something else' withPlatform: 'PS4'). 	
	db add: (Game new withName: 'Something better' withPlatform: 'Xbox'). 	
	db add: (Game new withName: 'Something for PC' withPlatform: 'PC'). 	
		
	self assert: (db findName: 'Something') isNil equals: false. 
