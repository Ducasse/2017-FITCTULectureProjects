tests
testPerformInteractGas
	"Testing interaction with MiGasStationBlock"
	
	| game miner tank map |
	game := MiGame new.
	miner := game miner.
	map := game map.
	tank := miner components tank.
	
	
	"MiGasStationBlock"
	miner position: (13@1) .
	"test 1"
	tank fuelAmount: 1.
	miner money: 0.
	game performInteract .
	self assert: (tank fuelAmount = 1).
	"test 2"
	tank fuelAmount: 1.
	miner money: 1000000.
	game performInteract .
	self assert: (tank fuelAmount = (tank capacity) ).
	"test 3a"
	tank fuelAmount: tank capacity - 10.
	miner money: 10.
	game performInteract .
	self assert: (tank fuelAmount = (tank capacity )).
	"test 3b"
	tank fuelAmount: tank capacity - 11.
	miner money: 10.
	game performInteract .
	self assert: (tank fuelAmount = (tank capacity - 1) & (miner money = 0)).
	"test 4"
	tank fuelAmount: tank capacity - 9.
	miner money: 10.
	game performInteract .
	self assert: (tank fuelAmount = tank capacity).
	