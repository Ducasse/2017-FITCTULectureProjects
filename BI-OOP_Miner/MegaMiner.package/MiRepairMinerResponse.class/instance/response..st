accessing
response: aGame
	|miner health maxHealth money deficit|
	miner := aGame miner.
	health := miner health current.
	maxHealth := miner health maximal.
	money := miner money.
	deficit := maxHealth - health.
	
	(deficit * 10) > money
		ifTrue:
		[
			deficit := (money / 10).
			miner health current: (health + deficit).
			miner money: 0
		]
		ifFalse:
		[
			miner health current: maxHealth.
			miner money: (money - (deficit *10))
		]