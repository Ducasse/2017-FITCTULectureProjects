tests
testRegisterWithNameService
	| locator serviceDict |
	locator  := ServiceLocator default.
	locator serviceDict removeAll.
	locator registerWithName: 'A' service: (CompanyService). 
	locator registerWithName: 'A' service: (PersonService). 
	serviceDict := locator serviceDict.
self assert: (serviceDict size = 1).	
	self assert: ((serviceDict at: 'A') class = CompanyService class). 
