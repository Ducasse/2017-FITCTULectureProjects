tests
testName
	| algorithm mapModel |
	mapModel := MapModel new.
	algorithm := GreedySearch withMapModel: mapModel.
	self assert: algorithm name equals: 'Greedy search'