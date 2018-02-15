tests
testFindPortal
	| matrix portal |
	matrix := MiMap generate .
	portal := MiMap findPortal: (matrix atRow: 1).
	self assert: (portal > 0 & portal <= matrix columnCount)
	
