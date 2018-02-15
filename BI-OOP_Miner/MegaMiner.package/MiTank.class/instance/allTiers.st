initialization
allTiers
	^ { 
		MiComponentTier effect: [ self capacity:  100. self fuelToMax] .
		MiComponentTier price: 60 effect: [ self capacity: 200. self fuelToMax] .
		MiComponentTier price: 100 effect: [ self capacity: 300. self fuelToMax ] .
		MiComponentTier price: 150 effect: [ self capacity: 400. self fuelToMax ] 
	 }