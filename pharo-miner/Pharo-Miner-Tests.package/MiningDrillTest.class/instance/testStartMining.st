tests
testStartMining
	| m d t |
	m := MiningMachine new.
	d := m getBehaviour: MiningDrill.
	t := CoalTile new.
	GameTest createDummyGame currentScene addGameObject: m; addGameObject: t.
	t transform position: 300@300.
	d startMining: t.
	self assert: (m getBehaviour: Collider) active not.
	self assert: (m getBehaviour: RigidBody) active not.
	self assert: (m getBehaviour: Controller) active not.
	self assert: d target equals: t.
	self assert: d coroutines isNotEmpty.