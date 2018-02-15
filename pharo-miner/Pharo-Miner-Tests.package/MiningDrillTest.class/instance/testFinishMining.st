tests
testFinishMining
	| m d t |
	m := MiningMachine new.
	d := m getBehaviour: MiningDrill.
	t := CoalTile new.
	GameTest createDummyGame currentScene addGameObject: m; addGameObject: t.
	d target: t.
	(m getBehaviour: Collider) deactivate.
	(m getBehaviour: RigidBody) deactivate.
	(m getBehaviour: Controller) deactivate.
	d finishMining.
	self assert: (m getBehaviour: Collider) active.
	self assert: (m getBehaviour: RigidBody) active.
	self assert: (m getBehaviour: Controller) active.
	self assert: d target isNil.
	self assert: m score >= 0