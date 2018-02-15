tests
testCreation
	| algorithm mapModel |
	mapModel := MapModel new.
	algorithm := GreedySearch withMapModel: mapModel.
	self assert: algorithm collection class equals: algorithm internalCollection.
	self assert: algorithm map equals: mapModel.