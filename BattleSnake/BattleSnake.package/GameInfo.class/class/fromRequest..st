instance creation
fromRequest: aMoveRequest
	|p|
	p:= aMoveRequest snakes detect: [ :i | (i at: 'id') = (aMoveRequest you) ].	
	^self new
	player: (Snake fromDictionary: p);
	snakes: (aMoveRequest snakes collect: [ :i | Snake fromDictionary: i ]);
	dead_snakes: (aMoveRequest dead_snakes collect: [ :i | Snake fromDictionary: i ]);
	width: aMoveRequest width;
	height: aMoveRequest height;
	food: (aMoveRequest food collect: [ :i | Point x: ((i at:1) + 1) y: ((i at:2) + 1) ] );
	turn: aMoveRequest turn
	yourself 