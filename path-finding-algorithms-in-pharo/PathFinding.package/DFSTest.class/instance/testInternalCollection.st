tests
testInternalCollection
	| algorithm mapModel |
	mapModel := MapModel new.
	algorithm := DFS withMapModel: mapModel.
	self assert: algorithm internalCollection equals: TileStack.