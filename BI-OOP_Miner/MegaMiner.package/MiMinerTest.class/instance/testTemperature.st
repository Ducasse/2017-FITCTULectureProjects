tests-accesing
testTemperature
	| miner temp temp2 |
	miner := MiMiner new.
	miner position: 1@1.
	temp := miner temperature .
	
	miner position: 1@100.
	temp2 := miner temperature .
	
	self assert: (temp < temp2).