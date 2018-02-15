tests
testPerformInteract
	"Testing interaction with MiRepairCenterBlock"
	
	| game miner map debug|
	game := MiGame new.
	miner := game miner.
	map := game map.
	
	
	"MiRepairCenterBlock"
	miner position: (5@1) .
	"test 1"
	miner health current: 1.
	miner money: 0.
	game performInteract .
	self assert: (miner health current = 1).
	"test 2"
	miner health current: 1.
	miner money: 1000000.
	game performInteract .
	self assert: (miner health current = (miner health maximal) ).
	"test 3a"
	miner health current: 90.
	miner money: 100.
	game performInteract .
	self assert: (miner health current = 100).
	"test 3b"
	miner health current: 89.
	miner money: 100.
	game performInteract .
	self assert: (miner health current = 99 & (miner money = 0)).
	"test 4"
	miner health current: 98.
	miner money: 19.
	game performInteract .
	self assert: ((debug :=miner health current) <= (miner health maximal) & (miner money = 0)).
	