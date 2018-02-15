tests
testInternalCollection
	| algorithm mapModel |
	mapModel := MapModel new.
	algorithm := BFS withMapModel: mapModel.
	self assert: algorithm internalCollection equals: TileQueue.