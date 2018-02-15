accessing
response: aGame
	|miner income|
	miner := aGame miner.
	income := miner components backpack sellCargo.
	miner money: (miner money + income)