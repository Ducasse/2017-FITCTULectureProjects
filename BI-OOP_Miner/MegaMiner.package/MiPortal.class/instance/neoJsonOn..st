json
neoJsonOn: aWriter
	aWriter
		for: self class
			do: [ :mapping | 
			(mapping mapInstVar: #target) valueSchema: Point.
			(mapping mapInstVar: #base) valueSchema: Point ].