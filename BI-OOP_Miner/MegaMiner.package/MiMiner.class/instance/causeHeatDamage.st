interaction
causeHeatDamage
	self temperature >= MiMinerTemperatureLimit
		ifTrue: [ self health damage: (self temperature - MiMinerTemperatureLimit) / 10 ]