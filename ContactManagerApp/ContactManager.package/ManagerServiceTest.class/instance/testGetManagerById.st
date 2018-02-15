tests-as yet unclassified
testGetManagerById
	|managerService|.
	managerService  := ManagerService new.
	
	self assert: (managerService  getManagerById: 1) equals: 'Donald Trump'.
	self assert: (managerService  getManagerById: 2) equals: 'Vladimir Putin'.
	self assert: (managerService  getManagerById: 3) equals: 'Hillary Clinton'.
	self assert: (managerService  getManagerById: 4) equals: 'Vladimir Pushkin'.
	self assert: (managerService  getManagerById: 5) equals: 'Winston Churchill'.
	self assert: (managerService  getManagerById: 6) equals: 'Jara Cimrman'.
