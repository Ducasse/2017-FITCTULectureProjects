adding
addRandomWaterAndSwamp
	| x y mapTileModel random mapTile |
	x := (Random new nextInt: (tiles rowCount / 4) asInteger)
		+ (tiles rowCount / 4) asInteger.
	y := (Random new nextInt: (tiles columnCount / 4) asInteger)
		+ (tiles columnCount / 4) asInteger.
	x to: x + (tiles rowCount / 4) asInteger do: [ :i | 
		y to: y + (tiles columnCount / 4) asInteger do: [ :j | 
			
			random := Random new nextInt: 8.
			random < 6
				ifTrue: [ mapTileModel := MapTileModelSwamp new. mapTile := MapTileSwamp new ]
				ifFalse: [ mapTileModel := MapTileModelWater new. mapTile := MapTileWater new ].
			mapTile x: i y: j.
			mapTileModel mapTile: mapTile.
			tiles at: i at: j put: mapTileModel ] ]