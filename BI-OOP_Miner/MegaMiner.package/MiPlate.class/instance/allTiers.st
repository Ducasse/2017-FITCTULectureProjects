initialization
allTiers
	^ { 
		MiComponentTier effect: [ self absorption: 5] .
		MiComponentTier price: 60 effect: [ self absorption: 10 ] .
		MiComponentTier price: 110 effect: [ self absorption: 15 ] .
		MiComponentTier price: 150 effect: [ self absorption: 20 ] 
	 }