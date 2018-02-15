accessors
neoJsonOn: aWriter
	aWriter
		for: self class do:[ :mapping|
			(mapping mapInstVar: #drill) valueSchema: MiDrill.
			(mapping mapInstVar: #plate) valueSchema: MiPlate.
			(mapping mapInstVar: #tank) valueSchema: MiTank.
			(mapping mapInstVar: #backpack) valueSchema: MiBackpack.
			(mapping mapInstVar: #coolingUnit) valueSchema: MiCoolingUnit.		
			];
		nextPut: self drill;
		nextPut: self plate;
		nextPut: self tank;
		nextPut: self backpack;
		nextPut: self coolingUnit.
		
		
	