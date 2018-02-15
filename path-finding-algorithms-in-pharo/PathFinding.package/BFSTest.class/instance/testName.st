tests
testName
	| algorithm mapModel |
	mapModel := MapModel new.
	algorithm := BFS withMapModel: mapModel.
	self assert: algorithm name equals: 'Breadth-first search'