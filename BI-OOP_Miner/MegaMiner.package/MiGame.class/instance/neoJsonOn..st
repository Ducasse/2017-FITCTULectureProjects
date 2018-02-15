json
neoJsonOn: aWriter
	aWriter
	for: self class
		do: [ :mapping | 
			(mapping mapInstVar: #miner) valueSchema: self miner class.
			(mapping mapInstVar: #map) valueSchema: self map class.];		
		nextPut: self miner;
		nextPut: self map.