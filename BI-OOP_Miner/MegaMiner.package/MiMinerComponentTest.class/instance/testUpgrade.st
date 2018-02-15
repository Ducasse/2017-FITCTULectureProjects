tests-upgrading
testUpgrade
	| miner upgrade comps backpack lastTire|
	miner := MiMiner new.
	
	"test for backpack"
	backpack := miner components backpack .
	lastTire := backpack tier.
	miner money: backpack nextUpgrade price.
	upgrade := backpack  upgrade: miner .
	self assert: (upgrade tier = 2).
	"test - dont have money 1"
	backpack := miner components backpack .
	lastTire := backpack tier.
	miner money: backpack nextUpgrade price - 1.
	upgrade := backpack  upgrade: miner .
	self assert: (upgrade tier = 2).
	
	"test - dont have money 2"
	backpack := miner components backpack .
	lastTire := backpack tier.
	miner money: 0.
	upgrade := backpack  upgrade: miner .
	self assert: (upgrade tier = 2).
	
	"test - dont have money 2"
	backpack := miner components backpack .
	lastTire := backpack tier.
	miner money: (-1).
	upgrade := backpack  upgrade: miner .
	self assert: (upgrade tier = 2).
	
	"more tests for other components"
	comps := {miner components backpack.
	miner components coolingUnit.
	miner components drill.
	miner components tank.
	miner components plate}.
	"2 upgrade test for each component"
	comps do: [ :component | 
			lastTire := component tier.
			miner money:  component nextUpgrade price.
			component upgrade: miner.
			self assert: (component tier > lastTire ).
			"assuming there are more than 1 upgrade"
			lastTire := component tier.
			miner money:  component nextUpgrade price - 1.
			component upgrade: miner.
			self assert: (component tier = lastTire ).
		].