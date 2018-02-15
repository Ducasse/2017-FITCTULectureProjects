accessing
fuelPercentage
	^((self fuelAmount /self capacity) * 100) asFloat rounded asString , '%'.