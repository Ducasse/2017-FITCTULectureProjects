tests-interaction
testRestore
	| miner |
	miner := MiMiner new.
	miner
		money: 100;
		position: 100 @ 100;
		causeHeatDamage;
		causeMechanicalDamage: 1;
		direction: MiDirectionRight new.
	miner restore.
	self assert: miner money equals: 0.
	self assert: miner position equals: (1@1).
	self assert: miner health current equals: miner health maximal.