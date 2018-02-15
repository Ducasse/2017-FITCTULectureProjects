tests
testMove
	| miner |
	miner := MiMiner new.
	
	miner position: 1@1; direction: MiDirectionEmpty new.
	miner move.
	self assert: (miner position = (1@1)).
	
	miner position: 1@1; direction: MiDirectionRight new.
	miner move.
	self assert: (miner position = (2@1)).
	
	miner position: 2@2; direction: MiDirectionLeft  new.
	miner move.
	self assert: (miner position = (1@2)).
	
	miner position: 1@1; direction: MiDirectionDown new.
	miner move.
	self assert: (miner position = (1@2)).
	
	miner position: 1@2; direction: MiDirectionUp new.
	miner move.
	self assert: (miner position = (1@1)).
	