json
neoJsonOn: aWriter
	aWriter
		for: self class do:[ :mapping|
			(mapping mapInstVar: #tier)].
		
	