accessing
calculateTemperature: aDepth
	| temperature |
	temperature := (aDepth - coolingPower) * 10.
	temperature < self minimalTemperature
		ifTrue: [ ^ self minimalTemperature ]
		ifFalse: [ ^ temperature ]