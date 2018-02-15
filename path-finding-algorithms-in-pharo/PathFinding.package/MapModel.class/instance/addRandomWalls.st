adding
addRandomWalls
	| numberOfGeneratedWalls x y mapTileModel mapTile |
	numberOfGeneratedWalls := 75.
	1 to: numberOfGeneratedWalls do: [ :aNumber | 
		x := (Random new nextInt: tiles rowCount - 2) + 1.
		y := (Random new nextInt: tiles columnCount - 2) + 1.
		mapTileModel := MapTileModelWall new.
		mapTile := MapTileWall new.
		mapTile x: x y: y.
		mapTileModel mapTile: mapTile.
		tiles
			at: x
			at: y
			put: mapTileModel ]