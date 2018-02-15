tests
checkSaved: miner loaded: loadedMiner
	
	"health"
	self assert: (loadedMiner health current == miner health current ).
	self assert: (loadedMiner health maximal == miner health maximal ).
	"money"
	self assert: (loadedMiner money == miner money ).
	"backpack"
	self assert: (loadedMiner components backpack size  == miner components backpack size ).
	self assert: (loadedMiner components backpack capacity  == miner components backpack capacity ).
	"tank"
	self assert: (loadedMiner components tank fuelAmount == miner components tank fuelAmount  ).
	self assert: (loadedMiner components tank capacity  == miner components tank capacity   ).