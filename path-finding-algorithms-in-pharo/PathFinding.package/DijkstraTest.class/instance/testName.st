tests
testName
	| algorithm mapModel |
	mapModel := MapModel new.
	algorithm := Dijkstra withMapModel: mapModel.
	self assert: algorithm name equals: 'Dijkstra'