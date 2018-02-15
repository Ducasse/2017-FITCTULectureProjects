initialization
allTiers
	^ { 
		MiComponentTier effect: [ self coolingPower: 10 ] .
		MiComponentTier price: 40 effect: [ self coolingPower: 20 ] .
		MiComponentTier price: 60 effect: [ self coolingPower: 30 ] .
		MiComponentTier price: 100 effect: [ self coolingPower: 40 ] 
	 }