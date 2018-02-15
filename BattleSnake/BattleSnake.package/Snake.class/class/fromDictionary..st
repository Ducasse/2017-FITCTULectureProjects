creation
fromDictionary: aDictionary
	^ self new
		coordinates: ((aDictionary at: #coords) collect: [ :i | Point x: ((i at: 1) + 1) y: ((i at: 2) + 1) ]);
		health: (aDictionary at: #health_points);
		name: (aDictionary at: #name);
		id: (aDictionary at: #id);
		taunt: (aDictionary at: #taunt);
		yourself