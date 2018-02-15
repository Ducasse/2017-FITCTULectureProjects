initialization
runWithAlgorithm: algorithmClass
	| map mapModel space algorithm |
	
	Map allInstances last delete.
	
	space := BlSpace new.
	space extent: 1200@800.
	mapModel := MapModel new.
	algorithm := algorithmClass withMapModel: mapModel.
	mapModel algorithm: algorithm.
	map := Map uniqueInstance.
	map mapModel: mapModel.
	space root addChild: map.
	space show.
