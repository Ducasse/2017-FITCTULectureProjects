tests
testCauseMechanicalDamage
	| miner absorption |
	miner := MiMiner new.
	miner components plate: (MiPlate atTier: 2).
	absorption := miner components plate absorption.
	
	miner causeMechanicalDamage: 15.
	self assert: miner health current equals: miner health maximal - (15 - absorption).
	
	miner health restore.
	miner causeMechanicalDamage: 30.
	self assert: miner health current equals: miner health maximal - (30 - absorption).
	
	miner health restore.
	miner causeMechanicalDamage: -10.
	self assert: miner health current equals: miner health maximal.
	
	miner health restore.
	miner causeMechanicalDamage: 10000000000000.
	self assert: miner health current equals: 0.
	
	
