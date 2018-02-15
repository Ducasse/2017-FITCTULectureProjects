tests
testPay
	|miner |
	miner := MiMiner new.
	
	miner money: 100.
	miner pay: 10.
	self assert: (miner money = 90).
	
	miner pay: 12.
	self assert: (miner money = 78).
	
	miner pay: 0.
	self assert: (miner money = 78).
	
	miner pay: 100.
	self assert: (miner money = -22). "Result is okay - this is controlled in other part of logic"
	