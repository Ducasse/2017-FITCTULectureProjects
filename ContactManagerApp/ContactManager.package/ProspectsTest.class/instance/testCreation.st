tests
testCreation
	| prospect |
	prospect := Prospect
		pname: 'Sony'
		company: 1
		state: 1		
		mandays: 100
		revenue: 100
		probability: 80.
	self assert: prospect pname equals: 'Sony'.
	self assert: prospect company equals: 1.
	self assert: prospect state equals: 1.
	self assert: prospect mandays equals: 100.
	self assert: prospect revenue equals: 100.
	self assert: prospect probability equals: 80