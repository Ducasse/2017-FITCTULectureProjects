tests
testSaveLoad
	| game miner loadedMiner |
	game := MiGame new.
	miner := game miner.
	
	"1 - basic test"
	game save.
	game := MiGame load.
	loadedMiner := game miner.
	
	self checkSaved: miner loaded: loadedMiner .
	
	"2 - miner stats test"
	miner := game miner.
	miner causeMechanicalDamage: 1.
	miner consumeFuel: 1.
	miner money: 123.
	
	game save.
	game := MiGame load.
	loadedMiner := game miner.
	
	self checkSaved: miner loaded: loadedMiner .