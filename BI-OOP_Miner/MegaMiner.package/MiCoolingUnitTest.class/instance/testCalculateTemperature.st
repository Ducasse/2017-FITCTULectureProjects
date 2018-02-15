tests-accessing
testCalculateTemperature
	| cool |
	cool := MiCoolingUnit new.
	
	self assert: (cool calculateTemperature: 0) = cool minimalTemperature .
	
	self assert: (cool calculateTemperature: 100) > 100.
	
	cool coolingPower: 100.
	self assert: (cool calculateTemperature: 100) = cool minimalTemperature .
	

	self assert: (cool calculateTemperature: -10) = cool minimalTemperature .