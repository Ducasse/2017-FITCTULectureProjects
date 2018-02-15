tests
testMapModel
	| map mapModel |
	map := Map uniqueInstance.
	mapModel := MapModel new.
	map mapModel: mapModel .
	self assert: map mapModel equals: mapModel.