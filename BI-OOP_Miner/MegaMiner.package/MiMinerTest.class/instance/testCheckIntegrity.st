tests-interaction
testCheckIntegrity
	| miner |
	miner := MiMiner new.
	
	self assert: (miner checkIntegrity).
	
	miner health current: 0.
	self assert: (miner checkIntegrity ) not.
	self assert: (miner health current > 0).
	self assert: (miner checkIntegrity).