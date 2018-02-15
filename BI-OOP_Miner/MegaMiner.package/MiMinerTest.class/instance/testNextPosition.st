tests-interaction
testNextPosition
	| miner |
	miner := MiMiner new.
	
	
	miner position: 1@1; 
		direction: MiDirectionRight new.
	self assert: ( miner nextPosition = (2@1)).
	
	miner direction: MiDirectionLeft new.
	self assert: ( miner nextPosition = (0@1)).
	
	miner  direction: MiDirectionDown new.
	self assert: ( miner nextPosition = (1@2)).
	
	miner direction: MiDirectionUp new.
	self assert: ( miner nextPosition = (1@0)).
	
