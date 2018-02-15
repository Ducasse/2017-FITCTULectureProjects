tests
testAdd
	| db |
	
	db := self createMockDbSize3.	
	self assert: (db all size) equals: 3. 
	
	db := self createMockDbSize5.	
	self assert: (db all size) equals: 5. 
	
	db := self createMockDbSize6.	
	self assert: (db all size) equals: 6. 
