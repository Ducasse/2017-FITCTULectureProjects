tests-accessing
testNextUpgrade
	| miner upgrade comps |
	miner := MiMiner new.
	
	comps := {miner components backpack.
	miner components coolingUnit.
	miner components drill.
	miner components tank.
	miner components plate}.
	
	comps
		do: [ :component | 
			upgrade := component nextUpgrade.
			self assert: upgrade price > 0.
			"test for no upgrade"
			"assuming there are less upgrades than 100"
			100
				timesRepeat: [ upgrade := component nextUpgrade.
					miner money: upgrade price.
					upgrade ifNotNil: [ component upgrade: miner ] ].
			upgrade := component nextUpgrade.
			self assert: upgrade price isInfinite ]