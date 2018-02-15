tests
testTryMove
	| miner block |
	miner := MiMiner new.
	
	miner components tank fuelAmount: 1.
	block := MiSurfaceBlock new.
	10 timesRepeat: [ self assert: (block tryMove: miner). ].
	
	miner components tank fuelAmount: 0.
	block := MiSurfaceBlock new.
	self assert: (block tryMove: miner) not.
	
	miner components tank fuelAmount: 2.
	block := MiUndergroundBlock new.
	self assert: (block tryMove: miner).
	self assert: (block tryMove: miner) not.
	
	miner components tank fuelToMax.
	miner health current: 1.
	block := MiUndergroundBlock new.
	self assert: (block tryMove: miner).
	block := MiCrackedStoneBlock  new.
	self assert: (block tryMove: miner) not.
	
	miner := MiMiner new.
	block := MiDiamondBlock new.
	self assert: (block tryMove: miner) not.
	miner components drill miningPower: block durability.
	self assert: (block tryMove: miner).