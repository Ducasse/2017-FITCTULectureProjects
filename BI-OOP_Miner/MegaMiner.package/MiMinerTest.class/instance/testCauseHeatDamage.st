tests-interaction
testCauseHeatDamage
	| miner health |
	miner := MiMiner new.
	health := miner health current .
	
	miner position: 1@100000.
	miner causeHeatDamage .
	
	self assert: (miner health current  < health )