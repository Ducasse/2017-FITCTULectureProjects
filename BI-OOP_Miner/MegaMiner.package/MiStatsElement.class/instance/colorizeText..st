drawing
colorizeText: aText
	|size|
	size := self textTemperature size.
	aText attributes: {
		BrTextForegroundAttribute paint: self temperatureColor }
		from: (size + 1) to: (size + 2).
	^ aText
		
	