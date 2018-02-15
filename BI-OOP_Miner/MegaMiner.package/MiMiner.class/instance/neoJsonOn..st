printing
neoJsonOn: aWriter
	aWriter
		for: self class do:[ :mapping|
			mapping mapInstVar: #money.
			(mapping mapInstVar: #position) valueSchema: Point.
			(mapping mapInstVar: #health) valueSchema: MiHealth.
			(mapping mapInstVar: #components) valueSchema: MiMinerComponentsHolder.			
			];
		mapInstVarsFor: Point;
		mapInstVarsFor: self health class;
		nextPut: self components.
		
	