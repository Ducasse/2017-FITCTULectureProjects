tests
testModel
	| view |
	view := MGView basicNew.
	view model: 5.
	self assert: view model equals: 5