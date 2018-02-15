tests
testSingleton
	| l1 l2 s |
		
	l1 := ServiceLocator default.
	l2 := ServiceLocator default.
	
	l1 serviceDict removeAll.
	l2 serviceDict removeAll.
	
	l1 registerWithName: 'A' service: (CompanyService). 
	l2 registerWithName: 'B' service: (PersonService). 
	
	s := l1 resolveWithName: 'B'.
	self assert: s class = PersonService.
	
	s := l2 resolveWithName: 'A'.
	self assert: s class = CompanyService.