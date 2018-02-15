tests
testResolveWithName
	| locator service |
	locator := ServiceLocator default.
	locator serviceDict removeAll.
	locator registerWithName: 'A' service: CompanyService.
	
	service := locator resolveWithName: 'A'.
	self assert: service class = CompanyService.
	
	service := locator resolveWithName: 'B'.
	self assert: service isNil.
	
	ServiceLocator reset.
	service := locator resolveWithName: 'A'.
	self assert: service isNil