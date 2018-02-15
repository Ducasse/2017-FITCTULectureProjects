tests
testContainer
	| view |
	view := MGView basicNew.
	view container: 6.
	self assert: view container equals: 6