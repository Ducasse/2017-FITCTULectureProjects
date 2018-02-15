tests
testName
	| algorithm mapModel |
	mapModel := MapModel new.
	algorithm := DFS withMapModel: mapModel.
	self assert: algorithm name equals: 'Depth-first search'