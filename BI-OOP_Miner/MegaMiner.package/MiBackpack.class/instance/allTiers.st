initialization
allTiers
	^ { 
		MiComponentTier effect: [ self capacity: 10 ] .
		MiComponentTier price: 50 effect: [ self capacity: 15 ] .
		MiComponentTier price: 100 effect: [ self capacity: 20 ] .
		MiComponentTier price: 150 effect: [ self capacity: 25 ] .
	 }