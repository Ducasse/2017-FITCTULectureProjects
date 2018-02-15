initialization
neoJsonOn: aWriter
	super neoJsonOn: aWriter.
	
	aWriter
		for: self class do:[ :mapping|
			(mapping mapInstVar: #fuelAmount).
			]