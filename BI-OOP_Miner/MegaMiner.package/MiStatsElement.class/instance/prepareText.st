initialization
prepareText
	|temperature|
	temperature := model temperature.
	temperature > 99
		ifTrue: [ temperature := 99 ].
	^ 
		self textTemperature,
		(temperature printStringBase: 10 nDigits: 2) asString,
		self textDelimiter,
		self textHealth,
		model healthPercentage,
		self textDelimiter,
		self textFuel,
		model components tank fuelPercentage,
		self textDelimiter,
		self textCargo, 
		model components backpack size asString,
		'/',
		model components backpack capacity asString
	