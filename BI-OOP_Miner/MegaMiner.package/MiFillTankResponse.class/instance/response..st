accessing
response: aGame
	| miner capacity fuel money deficit |
	miner := aGame miner.
	capacity := miner components tank capacity.
	fuel := miner components tank fuelAmount.
	money := miner money.
	deficit := capacity - fuel.
	
	deficit > money
		ifTrue:
		[
			deficit := money.
			miner components tank fill: deficit.
			miner money: 0
		]
		ifFalse:
		[
			miner components tank fill: deficit.
			miner money: (money - deficit)
		]
	