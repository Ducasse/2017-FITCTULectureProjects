tests
testName
	| algorithm mapModel |
	mapModel := MapModel new.
	algorithm := AStar withMapModel: mapModel.
	self assert: algorithm name equals: 'A*'