tests
testConsumeFuel
	| miner fuel |
	miner := MiMiner new.
	
	fuel := miner components tank fuelAmount .
	
	miner consumeFuel: 1.
	self assert: (miner components tank fuelAmount < fuel).
	
	fuel := miner components tank fuelAmount: 10 .
	miner consumeFuel: 1.
	self assert: (miner components tank fuelAmount = 9).
	miner consumeFuel: 0.
	self assert: (miner components tank fuelAmount = 9).
	
	
