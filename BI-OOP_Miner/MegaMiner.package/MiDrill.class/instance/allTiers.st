initialization
allTiers
	^ { 
		MiComponentTier effect: [ self miningPower: 10 ] .
		MiComponentTier price: 60 effect: [ self miningPower: 20 ] .
		MiComponentTier price: 100 effect: [ self miningPower: 30 ] .
		MiComponentTier price: 150 effect: [ self miningPower: 40 ] 
	 }