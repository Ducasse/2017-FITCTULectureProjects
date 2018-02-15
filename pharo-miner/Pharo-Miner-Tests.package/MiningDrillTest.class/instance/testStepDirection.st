tests
testStepDirection
	| m d t |
	m := MiningMachine new.
	d := m getBehaviour: MiningDrill.
	t := CoalTile new.
	GameTest createDummyGame currentScene addGameObject: m; addGameObject: t.
	t transform position: 300@300.
	d target: t.
	self assert: d stepDirection equals: (m position directionTo: t position)