drawing
temperatureColor
	model temperature < 30
		ifTrue: [^ Color green muchDarker].
	model temperature < MiMinerTemperatureLimit
		ifTrue: [^ Color orange].		
	^ Color red
